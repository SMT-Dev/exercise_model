package com.cisl.smt.web;

import com.cisl.smt.po.*;
import com.cisl.smt.service.*;
import com.cisl.smt.web.Temp.ProblemAnsTemp;
import com.cisl.smt.web.Temp.CommentTemp;
import com.cisl.smt.web.Temp.SettingTemp;
import com.cisl.smt.web.Temp.SheetTemp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

@RestController
public class ExerciseController {

    @Autowired
    private ProblemService problemService;

    @Autowired
    private OptionsService optionsService;

    @Autowired
    private AnswerService answerService;

    @Autowired
    private PointService pointService;

    @Autowired
    private ExerciseService exerciseService;

    @Autowired
    private ExerciseEvalService exerciseEvalService;

    @Autowired
    private ProblemEvalService problemEvalService;

    @Autowired
    private ReviewCollecService reviewCollecService;

    private long USER_ID = 3;   // 暂时的模拟变量
    private CommentTemp commentTemp = new CommentTemp();  // 内部的试卷评估变量

    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @GetMapping("/exercise_opt")
    public ModelAndView exercise_opt() {
        ModelAndView mav;
        mav = new ModelAndView("prob_opt");
        return mav;
    }

    @GetMapping("/exercise_txt")
    public ModelAndView exercise_txt() {
        ModelAndView mav;
        mav = new ModelAndView("prob_txt");
        return mav;
    }

    @GetMapping("/start")
    public ModelAndView start() {
        ModelAndView mav;
        mav = new ModelAndView("start");
        return mav;
    }

    @GetMapping("/demo")
    public ModelAndView demo(@RequestParam("src") String src) {
        SettingTemp settingTemp = SettingTemp.getInstance();
        settingTemp.setSrc(src);
        ModelAndView mav;
        mav = new ModelAndView("demo");
        return mav;
    }

    @GetMapping("/demo_marked")
    public ModelAndView demo_marked() {
        ModelAndView mav;
        mav = new ModelAndView("demo_marked");
        return mav;
    }

    @GetMapping("/prob_opt_marked")
    public ModelAndView prob_opt_marked() {
        ModelAndView mav;
        mav = new ModelAndView("prob_opt_marked");
        return mav;
    }

    @GetMapping("/prob_txt_marked")
    public ModelAndView prob_txt_marked() {
        ModelAndView mav;
        mav = new ModelAndView("prob_txt_marked");
        return mav;
    }

    @GetMapping(path = "/getProblem")
    public Problem getProblem(@RequestParam() Long num) {
        Problem pb = problemService.getProblemByProb_id(num);
        return pb;
    }

    @GetMapping(path = "/getOptions")
    public Options getOptions(@RequestParam() Long id) {
        Options op = optionsService.getOptions(id);
        return op;
    }

    @GetMapping(path = "/getSheet")
    public SheetTemp getSheet() {
        return SheetTemp.getInstance();
    }

    @PostMapping("/postSheet")
    public SheetTemp postSheet(@RequestParam("idx") Long idx,
                               @RequestParam("finish") Long finish,
                               @RequestParam("choice") String choice,
                               @RequestParam("choice_text") String choice_text) {

        SheetTemp st = SheetTemp.getInstance();   //获得唯一单例
        ArrayList<ProblemAnsTemp> tmpList = st.getSheet_list();
        for (ProblemAnsTemp pt : tmpList) {
            if (pt.getIdx().equals(idx)) {
                System.out.println(idx);
                pt.setChoice(choice);
                pt.setFinish(finish);
                pt.setChoice_text(choice_text);
            }
        }
        st.setSheet_list(tmpList);

        return st;
    }

    private ArrayList<Long> stringToList(String str) {
        //TODO: 要学会 lambda 表达式
        //List<User> userList = asList(new User("张三" , 10) , new User("李四" , 10) , new User("王五" , 13));
        //String result = userList.stream().map(User::getUsername).collect(Collectors.joining("," , "[" , "]"));
        ArrayList<Long> resList = new ArrayList<>();
        str = str.substring(1, str.length() - 1);
        if (!str.contains(",")) {
            resList.add(Long.valueOf(str));
        } else {
            String[] strSplit = str.split(",");
            for (String item : strSplit)
                resList.add(Long.valueOf(item));
        }
        return resList;
    }

    private int countScore(ArrayList<ProblemAnsTemp> probList) {
        int sum = 0;
        for (ProblemAnsTemp pt : probList) sum += pt.getEval_res();
        return sum * 100 / probList.size();
    }

    public int countHandleRate(ArrayList<ProblemAnsTemp> probList) {
        /**
         * @description: 计算该次测试的考点掌握程度，共 N 个考点，掌握 M 个，掌握程度 M/N
         * 掌握的定义：该考点下做对比例超过一个 threshold, 暂定 70%
         */
        int threshold = 70;
        int totalPointNum = 0;
        int handlePointNum = 0;
        HashMap<String, ArrayList<ProblemAnsTemp>> pointProbMap = new HashMap<>();
        for (ProblemAnsTemp pt : probList) {
            String pointId = pt.getPoint();
            if (!pointProbMap.containsKey(pointId))
                pointProbMap.put(pointId, new ArrayList<>());
            pointProbMap.get(pointId).add(pt);
        }
        for (String pointId : pointProbMap.keySet()) {
            totalPointNum += 1;
            int rightNum = (int) pointProbMap.get(pointId).stream().filter(pt -> pt.getEval_res() == 1).count();
            if (rightNum / pointProbMap.get(pointId).size() *100 > threshold)
                handlePointNum += 1;
        }
        return handlePointNum *100 / totalPointNum;
    }

    @GetMapping(path = "/getJudgeDetail")
    public SheetTemp getJudgeDetail(@RequestParam() Long id) {
        /**
         * @description: 获得数据库中某个 SheetTemp 记录, 属于评估后的记录
         */
        SheetTemp st = SheetTemp.getInstance();   //获得唯一单例
        //TODO 不是返回当前的全局 SheetTemp 而是去数据库中抽取
        //TODO 进行分数、掌握知识点等等的评价，写入 CommentTemp 和 t_exer_eval 数据库


        //最新的 SheetTemp 存入 t_exer_eval
        // exercise 的 ID 自增, exer_eval_id 为自增。主键 id 都不要去人为设置
        // t_exer_eval 中保存了 user_id 和 exercise_id
        ExerciseEvaluation ee = new ExerciseEvaluation();

        int evalScore = countScore(st.getSheet_list());
        ee.setExer_eval_score((long) evalScore);
        commentTemp.setScore(evalScore);
        commentTemp.setHandle_rate(countHandleRate(st.getSheet_list()));

        ee.setConsume_time((long) 120);  //TODO 做题用时

        String curTime = sdf.format(new Date());
        ee.setExer_eval_time(curTime);
        commentTemp.setTime(curTime);

        ee.setUser_id(USER_ID);
        exerciseEvalService.insertExerciseEval(ee);

        //每一题都存一个 prob_eval
        for (ProblemAnsTemp pt : st.getSheet_list()) {

            if (pt.getFinish() == 0)   // 只记录做了的题
                continue;
            ProblemEvaluation pe = new ProblemEvaluation();
            //TODO prob_eval_id 设置：当前系统毫秒数
            pe.setProb_eval_id(System.currentTimeMillis());
            pe.setProb_id(pt.getIdx());
            pe.setUser_id(USER_ID);
            pe.setChoice(pt.getChoice());
            pe.setChoice_text(pt.getChoice_text());
            pe.setProb_text(pt.getProb_text());
            pe.setAnalysis(pt.getAnalysis());
            pe.setAns(pt.getAns());
            pe.setPoint(pt.getPoint());
            pe.setType(pt.getType());
            pe.setProb_eval_res(pt.getEval_res());
            pe.setProb_eval_time(sdf.format(new Date()));
            pe.setConsume_time((long) 20);

            try {
                if (problemEvalService.getProblemEvalById(pe.getProb_eval_id()) == null) {
                    problemEvalService.insertProblemEval(pe);
                    System.out.println("已插入");
                } else {
                    System.out.println(problemEvalService.getProblemEvalById(pe.getProb_eval_id()));
                    System.out.println("已存在");
                }
            } catch (org.springframework.dao.DataIntegrityViolationException e) {
                System.out.println(problemEvalService.getProblemEvalById(pe.getProb_eval_id()));
                System.out.println("重复插入,忽略");
            }


            if (pe.getProb_eval_res() == 0) {   // 如果是错题
                String probEvalListStr, probListStr;
                ArrayList<Long> probList;
                ArrayList<Long> probEvalList;
                try {
                    probListStr = reviewCollecService.getCollec(USER_ID).getProb_list();
                    probEvalListStr = reviewCollecService.getCollec(USER_ID).getProb_eval_list();

                    probList = stringToList(probListStr);
                    probEvalList = stringToList(probEvalListStr);
                } catch (Exception e) {
                    //如果暂时没有此用户的记录，就 new 一个空的
//                    reviewCollecService.insertCollec(USER_ID, "[1606562924833]", "[10001]");
                    System.out.println(getException(e));
                    return st;
                }

                if (probList.indexOf(pt.getIdx()) == -1) {  //现在的方法是不重复 才加入
                    probEvalList.add(pe.getProb_eval_id());   //核心步骤：加入 eval_id
                    probList.add(pt.getIdx());

                    reviewCollecService.updateCollec(USER_ID, probEvalList.toString().replaceAll(" ", ""), probList.toString().replaceAll(" ", ""));   //更新该用户的错题集
                }
            }
        }


        //TODO 对题存入 t_pass_collec

        return st;
    }

    private List<Problem> customizeProbList(List<Problem> probList, Integer choiceNum, Integer txtNum) {
        /**
         * @description: 根据参数，定制题目列表
         *      随机打乱一套题目的顺序，保证选择题排在文本题前面，给定题目类型和难度参数
         * @return: 题目序号列表
         */
        List<Problem> choiceProblemList = new ArrayList<>();
        List<Problem> txtProblemList = new ArrayList<>();
        for (Problem pro : probList) {
            if (pro.getProb_attr().equals("Choice"))
                choiceProblemList.add(pro);
            else txtProblemList.add(pro);
        }

        List<Problem> resList = new ArrayList<>();
        try {
            Collections.shuffle(choiceProblemList);
            resList = choiceProblemList.subList(0, choiceNum);
        } catch (IndexOutOfBoundsException e) {
            System.out.println("276: 当前 level 的选择题数量不够，题库有问题");
        }
        try {
            Collections.shuffle(txtProblemList);
            resList.addAll(txtProblemList.subList(0, txtNum));
        } catch (IndexOutOfBoundsException e) {
            //当前 level 的文本题数量不够，选择题凑
            resList.addAll(choiceProblemList.subList(choiceNum, choiceNum + txtNum - txtProblemList.size()));
            resList.addAll(txtProblemList);
        }

        return resList;
    }

    public Long getOneRandom() {
        int max = 10400, min = 10000;
        int res = new Random().nextInt(max - min) + min;
        return (long) res;
    }

    public ArrayList<Long> getFromNaive(Integer totalNum) {
        /**
         * @description: 随机出 totalNum 道题，从数据库的开头开始，为了暂时模拟数据
         * @return: 题目序号列表
         */
        ArrayList<Long> probList = new ArrayList<>();
        if (totalNum == 25) {
            for (int i = 10001; i <= 10017; i++) {
                probList.add((long) i);
            }
            Collections.shuffle(probList);   //打乱顺序
            for (int i = 10259; i <= 10266; i++) {
                probList.add((long) i);
            }
        } else if (totalNum == 20) {
            for (int i = 10001; i <= 10010; i++) {
                probList.add((long) i);
            }
            Collections.shuffle(probList);   //打乱顺序
            for (int i = 10279; i <= 10288; i++) {
                probList.add((long) i);
            }
        } else {
            for (int i = 10001; i <= 10012; i++) {
                probList.add((long) i);
            }
            Collections.shuffle(probList);   //打乱顺序
            for (int i = 10259; i <= 10261; i++) {
                probList.add((long) i);
            }
        }

        return probList;
    }

    public ArrayList<Long> getFromLesson(Long lesson_id, Integer totalNum) {
        /**
         * @description: 从对应的 lesson 中抽取题目，默认文本与选择各占一半
         * @return: 题目序号列表
         */
        ArrayList<Long> probNumList = new ArrayList<>();
        List<Problem> probList = problemService.getProblemByLesson_id(lesson_id);

        //从数据库中取出给定 lesson 的题，交给 customize 定制
        probList = customizeProbList(probList, totalNum / 2, totalNum / 2);
        for (Problem pro : probList)
            probNumList.add(pro.getProb_id());

        return probNumList;
    }

    @GetMapping("/getFromForgetCurve")
    public ArrayList<Long> getFromForgetCurve(@RequestParam("num") Integer partNum) {
        /**
         * @description: 按照做过(不论对错)的题目遗忘曲线方式出题，占比 2道/20
         * @return: 题目序号列表
         */
        //TODO 以两周为分界线
        ArrayList<Long> probList = new ArrayList<>();
        ArrayList<ProblemEvaluation> probEvalList = problemEvalService.getProblemEvalByUser(USER_ID);
        Collections.shuffle(probEvalList);
        for (int i = 0; i < partNum; i++)
            probList.add(probEvalList.get(i).getProb_id());

        return probList;
    }

    @GetMapping("/getFromSimilar")
    public ArrayList<Long> getFromSimilar(@RequestParam("num") Integer partNum) {
        /**
         * @description: 根据该 level 内做错的相似题目出题，占比 5道/20，没有信息则随机
         * @return: 题目序号列表
         */
        String probEvalListStr = reviewCollecService.getCollec(USER_ID).getProb_eval_list();
        ArrayList<Long> probEvalList = stringToList(probEvalListStr); //所有错题
        ArrayList<Long> wrongList = new ArrayList<>();
        ArrayList<Long> probList = new ArrayList<>();
        Integer curLevel = SettingTemp.getInstance().getLev();
        for (Long num : probEvalList) {
            Long probId = problemEvalService.getProblemEvalById(num).getProb_id();
            //只选取level 等于 当前level的题
            if (Integer.valueOf(problemService.getProblemByProb_id(probId).getProb_level()).equals(curLevel))
                wrongList.add(probId);
        }
        Collections.shuffle(wrongList);

        try {
            wrongList = new ArrayList<>(wrongList.subList(0, partNum)); //wrongList 表示在当前 level 的错题,选取了 5 道
        } catch (IndexOutOfBoundsException e) {
            //数量不够, 不切割,
            ;
        }
        int curSum = 0;
        for (Long wrongId : wrongList) {
            Long pointId = problemService.getProblemByProb_id(wrongId).getProb_id();  //找到对应的知识点
            List<Problem> pointProblemList = problemService.getProblemByPoint_id(pointId); //找到同知识点的所有题
            List<Long> tmpList = pointProblemList.stream().map(Problem::getProb_id).collect(Collectors.toList());

            if (curSum + tmpList.size() >= partNum) {
                //数量已足够
                probList.addAll(tmpList.subList(0, partNum - curSum));
                break;
            } else
                probList.addAll(tmpList);
            curSum += tmpList.size();
        }

        while (curSum < partNum) {
            //题目仍然不够
            probList.add(getOneRandom());
            curSum++;
        }


        return probList;
    }

    @GetMapping("/getFromNew")
    public ArrayList<Long> getFromNew(@RequestParam("lesson") Long lesson_id, @RequestParam("num") Integer partNum) {
        /**
         * @description: 根据用户当前的新知识点出题，即课课练中的当堂知识点出题，10道/20
         * @return: 题目序号列表
         */
        ArrayList<Long> probList = getFromLesson(lesson_id, partNum);

        return probList;
    }

    @GetMapping("/getHighFrequency")
    public ArrayList<Long> getHighFrequency(@RequestParam("num") Integer partNum) {
        /**
         * @description: 按照高频知识点出题，如固定搭配，占比 3道/20
         * @return: 题目序号列表
         */
        ArrayList<Long> probList = new ArrayList<>();
        // 数据库中 0 表示固定搭配，-1 表示未知考点
        ArrayList<Problem> problemList = new ArrayList<>(problemService.getProblemByPoint_id((long) 0));
        for (Problem problem : problemList)
            probList.add(problem.getProb_id());

        Collections.shuffle(probList);
        probList = new ArrayList<>(probList.subList(0, partNum));

        return probList;
    }

    @GetMapping("/getFromRecommend")
    public ArrayList<Long> getFromRecommend(@RequestParam("num") Integer partNum) {
        /**
         * @description: 「推荐联系」模块，根据本次做错的题目，推荐相似的题目
         *                目前按照同一考点来推
         * @return: 题目序号列表
         */
        ArrayList<ProblemEvaluation> wrongList = getWrong();
        ArrayList<Long> pointList = new ArrayList<>();
        ArrayList<Long> outputProblemList = new ArrayList<>();
        for (ProblemEvaluation pe : wrongList)
            //收集所有错题的考点
            pointList.add(problemService.getProblemByProb_id(pe.getProb_id()).getPoint_id());
        Collections.shuffle(pointList);
        for (Long pointId : pointList) {
            List<Problem> allProb = problemService.getProblemByPoint_id(pointId);
            //聚集该考点的所有题目-题号
            outputProblemList.addAll(allProb.stream().map(Problem::getProb_id).collect(Collectors.toList()));
        }
        Collections.shuffle(outputProblemList);
        outputProblemList = reorganizeProbList(outputProblemList);
        outputProblemList = new ArrayList<>(outputProblemList.subList(0, partNum));

        return outputProblemList;
    }

    private ArrayList<Long> reorganizeProbList(ArrayList<Long> tmpList) {
        ArrayList<Long> orderList = new ArrayList<>();
        for (Long tmpNum : tmpList)
            if (problemService.getProblemByProb_id(tmpNum).getProb_attr().equals("Choice"))
                orderList.add(tmpNum);

        for (Long tmpNum : tmpList)
            if (!problemService.getProblemByProb_id(tmpNum).getProb_attr().equals("Choice"))
                orderList.add(tmpNum);

        return orderList;
    }


    @GetMapping(path = "/initPaper")
    public SheetTemp initPaper() {
        /**
         * @description: 根据 SettingTemp组卷出题，返回题目数组，并且初始化 sheetTemp
         * @return: 返回初始的 sheetTemp
         */
        //TODO 也应该接受一个 id
        //TODO 实现各种出题逻辑,包括设置选择题和文本题各自的题量
        //setting 中 src: lesson/wrong/recommend
        //题量-20，其中新知识点-10，基于相似-5，高频练习-3，基于遗忘曲线-2（新知识点10题数量不可改变）


        SettingTemp settingTemp = SettingTemp.getInstance();
        ArrayList<Long> probList = new ArrayList<>();
        Integer totalNum = settingTemp.getProbNum();  //lesson 默认 totalNum = 20
        Integer level = settingTemp.getLev();
        System.out.println(settingTemp);
        if (settingTemp.getSrc().equals("ai")) {
            //进入 AI 刷题温故知新, 依次接收四个来源. 2.0 版本已废弃
        } else if (settingTemp.getSrc().equals("lesson")) {
            //进入课课练做题，V2.0版本中，按照 4 个来源组合抽取, 此处 sys 代表lesson_id
            Long lesson_id = Long.valueOf(settingTemp.getSys());
            ArrayList<Long> tmpList = new ArrayList<>();
            tmpList.addAll(getFromNew(lesson_id, 10));
            tmpList.addAll(getFromSimilar(5));
            tmpList.addAll(getHighFrequency(3));
            tmpList.addAll(getFromForgetCurve(2));

            //保证选择题在文本题前面
            probList = reorganizeProbList(tmpList);

        } else if (settingTemp.getSrc().equals("test")) {
            //进入双周测 or 阶段测做题，此处 sys=7-8 表示7-8周
//            String week = settingTemp.getSys();
//            probList.addAll(getFromLesson(lesson, totalNum));
        } else if (settingTemp.getSrc().equals("recomnd")) {
            //进入推荐练习做题，只按照 lesson 抽取, 此处 sys 代表 redId=8888（参考的试卷）
//            Integer refId = Integer.valueOf(settingTemp.getSys());
            probList = getFromRecommend(totalNum);

        } else if (settingTemp.getSrc().equals("wrong")) {
            //进入错题集做题，此处 sys 无意义
            //注意一定要按顺序，选择在前，文本在后
            for (ProblemEvaluation pe : getWrong()) {
                if (problemService.getProblemByProb_id(pe.getProb_id()).getProb_attr().equals("Choice"))
                    probList.add(pe.getProb_id());
            }
            for (ProblemEvaluation pe : getWrong()) {
                if (!problemService.getProblemByProb_id(pe.getProb_id()).getProb_attr().equals("Choice"))
                    probList.add(pe.getProb_id());
            }
        }

//        probList = getFromNaive(totalNum)


        SheetTemp st = SheetTemp.getInstance();
        if (st.getSheet_list().size() > 0)  //如果当前 sheet 没有清空，则进行一次清空
            st.setSheet_list(new ArrayList<>());
        st.setNum_list(probList);  // 一个坑，这里是同一个对象，影响了下面的 probList

        st.setId(System.currentTimeMillis());  //试卷 id 的生成: 当前时间的毫秒数

        int optNum = 0, txtNum = 0;
        for (Long probNum : probList) {  //将题目填入 sheet_list
            ProblemAnsTemp pt = new ProblemAnsTemp();

            Problem p = problemService.getProblemByProb_id(probNum);
            if (p.getProb_attr().equals("Choice")) {
                optNum++;
                pt.setType("opt");
            } else {
                txtNum++;
                pt.setType("txt");
            }
            pt.setIdx(probNum);
            pt.setFinish((long) 0);   //默认未完成状态
            pt.setPoint(pointService.getPoint(p.getPoint_id()).getPoint_text());
            pt.setProb_text(p.getProb_text());
            pt.setAnalysis(answerService.getAnswer(probNum).getAnalysis_text());
            pt.setAns(answerService.getAnswer(probNum).getAnswer_text());
            st.addSheet_list(pt);
        }

        st.setOpt_num((long) optNum);
        st.setTxt_num((long) txtNum);

        //本次出题组卷，插入数据库

        Exercise exercise = new Exercise();
        exercise.setExercise_id(st.getId());
        exercise.setGrammar_id((long) -1);
        exercise.setProb_list(probList.toString().replaceAll(" ", ""));
        exercise.setExercise_attr("ai");
        exercise.setUpdate_time(sdf.format(new Date()));

        exerciseService.insertExercise(exercise);

        return st;
    }

    @PostMapping(path = "/postSetting")
    public SettingTemp postSetting(@RequestParam("src") String src,
                                   @RequestParam("sys") String sys,
                                   @RequestParam("lev") Integer lev,
                                   @RequestParam("probNum") Integer probNum) {
        /*
        src: lesson ai test recomnd wrong
        lev: 当前等级，num: 题目总量
        refId: 需要参考的组卷 ID，
        sys: 1. 温故知新中：sys=smt 代表出题的体系
            2. 课课练中 sys=8 代表课程 lesson8
            3. 双周测试中，sys=7-8 表示7-8周
            4. 如果有需要参考的 redId=8888，那么 sys 代表 refId，
         */

        SettingTemp settingTemp = SettingTemp.getInstance();
        settingTemp.setSrc(src);
        settingTemp.setLev(lev);
        settingTemp.setProbNum(probNum);
        settingTemp.setSys(sys);

        return settingTemp;
    }

    @GetMapping(path = "/getCommentAi")
    public CommentTemp getCommentAi(@RequestParam() Long id) {
        /**
         * @description: 根据用户此次做题结果，计算用户做题详情评论，如知识点掌握程度等
         * @return: commentTemp 类
         */
        return commentTemp;
    }

    @GetMapping(path = "/getCommentLesson")
    public CommentTemp getCommentLesson(@RequestParam() Long id) {
        commentTemp.setLesson(Integer.parseInt(SettingTemp.getInstance().getSys()));
        commentTemp.setLevel(SettingTemp.getInstance().getLev());
        return commentTemp;
    }

    @GetMapping(path = "/getCommentExtra")
    public CommentTemp getCommentExtra(@RequestParam() Long id) {
        return commentTemp;
    }

    @GetMapping(path = "/homepageInitial")
    public HashMap<String, Integer> homepageInitial() {
        // 主页初始化操作
        HashMap<String, Integer> map = new HashMap<String, Integer>();
        map.put("level", 1);
        map.put("num", 25);
        return map;
    }

    @GetMapping(path = "/getHistory")
    public List<ExerciseEvaluation> getHistory() {
        // TODO 加上参数用户 id
        /**
         * @description: 获取用户做的历史试卷
         * @return: 试卷序号列表
         */
        return exerciseEvalService.getExerciseEval(USER_ID);
    }

    public static String getException(Exception ex) {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        PrintStream pout = new PrintStream(out);
        ex.printStackTrace(pout);
        String ret = new String(out.toByteArray());
        pout.close();
        try {
            out.close();
        } catch (Exception e) {
        }
        return ret;
    }

    @GetMapping(path = "/getWrong")
    public ArrayList<ProblemEvaluation> getWrong() {
        /**
         * @description: 获取用户做错的所有题 + 题的评判信息
         * @return: 类似 sheetTemp 的列表
         */
        ArrayList<ProblemEvaluation> wrongList = new ArrayList<>();

        try {
            String probEvalListStr = reviewCollecService.getCollec(USER_ID).getProb_eval_list();
            System.out.println("getWrong558: " + probEvalListStr);
            ArrayList<Long> probEvalList = stringToList(probEvalListStr);
            for (Long probEvalId : probEvalList)
                wrongList.add(problemEvalService.getProblemEvalById(probEvalId));
        } catch (Exception e) {
            System.out.println(getException(e));
        }

        return wrongList;
    }

    @GetMapping("/getProblemList")
    public ArrayList<Problem> getProblemList(@RequestParam("list") String listStr) {
        /**
         * @description: 开放 API，给定 problem 的列表字符串参数，返回题目细节
         * @return: Problem 的列表
         */
        listStr = listStr.replaceAll(" ", "");
        listStr = "[" + listStr + "]";
        ArrayList<Long> probList = stringToList(listStr);
        ArrayList<Problem> outputList = new ArrayList<>();
        for (Long num : probList)
            outputList.add(problemService.getProblemByProb_id(num));

        return outputList;
    }
}
