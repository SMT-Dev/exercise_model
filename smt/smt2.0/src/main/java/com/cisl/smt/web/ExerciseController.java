package com.cisl.smt.web;

import com.cisl.smt.po.*;
import com.cisl.smt.service.*;
import com.cisl.smt.web.Temp.ProblemAnsTemp;
import com.cisl.smt.web.Temp.ResultTemp;
import com.cisl.smt.web.Temp.SettingTemp;
import com.cisl.smt.web.Temp.SheetTemp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.*;

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
    private ResultTemp resultTemp = new ResultTemp();  // 内部的试卷评估变量

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
    public ModelAndView demo() {
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
        Problem pb = problemService.getProblem(num);
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

    private Long countScore(ArrayList<ProblemAnsTemp> probList){
        int sum = 0;
        for (ProblemAnsTemp pt : probList) sum += pt.getEval_res();
        return (long) sum*100/probList.size();
    }

    @GetMapping(path = "/getJudgeDetail")
    public SheetTemp getJudgeDetail(@RequestParam() Long id) {
        /**
         * @description: 获得数据库中某个 SheetTemp 记录, 属于评估后的记录
         */
        SheetTemp st = SheetTemp.getInstance();   //获得唯一单例
        //TODO 不是返回当前的全局 SheetTemp 而是去数据库中抽取
        //TODO 进行分数、掌握知识点等等的评价，写入 ResultTemp 和 exer_eval 数据库


        //最新的 SheetTemp 存入 t_exer_eval
        // exercise 的 ID 自增, exer_eval_id 为自增。主键 id 都不要去人为设置
        // t_exer_eval 中保存了 user_id 和 exercise_id
        ExerciseEvaluation ee = new ExerciseEvaluation();

        Long evalScore = countScore(st.getSheet_list());
        ee.setExer_eval_score(evalScore);
        resultTemp.setScore(evalScore.intValue());

        ee.setConsume_time((long) 120);

        String curTime = sdf.format(new Date());
        ee.setExer_eval_time(curTime);
        resultTemp.setTime(curTime);

        ee.setUser_id(USER_ID);
        exerciseEvalService.insertExerciseEval(ee);

        //每一题都存一个 prob_eval
        for (ProblemAnsTemp pt : st.getSheet_list()) {

            if (pt.getFinish() == 0)   // 只记录做了的题
                continue;
            ProblemEvaluation pe = new ProblemEvaluation();
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

            problemEvalService.insertProblemEval(pe);

            if (pe.getProb_eval_res() == 0 && false) {   // 如果是错题
                //TODO 暂时有 bug  稍后实现
                String probEvalListStr, probListStr;
                ArrayList<Long> probList = new ArrayList<>();
                ArrayList<Long> probEvalList = new ArrayList<>();
                try {
                    probEvalListStr = reviewCollecService.getCollec(USER_ID).getProb_eval_list();
                    probListStr = reviewCollecService.getCollec(USER_ID).getProb_list();
                    //此处获取的是 prob_eval_id 列表，而非 problem 的 Id
                    probEvalListStr = probEvalListStr.substring(1, probEvalListStr.length() - 1);
                    probListStr = probListStr.substring(1, probListStr.length() - 1);

                    String[] probEvalListSplit = probEvalListStr.split(",");
                    String[] probListSplit = probListStr.split(",");
                    for (String str : probEvalListSplit) {
                        probEvalList.add(Long.valueOf(str));
                    }
                    for (String str : probListSplit) {
                        probList.add(Long.valueOf(str));
                    }
                } catch (Exception e) {
                    //如果暂时没有此用户的记录，就 new 一个空的
//                    reviewCollecService.insertCollec(USER_ID, "[1606562925251, 1606562925253]", "[10001, 10002]");
                    return st;
                }

                if (probList.indexOf(pt.getIdx()) == -1){  //现在的方法是不重复 才加入
                    probEvalList.add(pe.getProb_eval_id());   //核心步骤：加入 eval_id
                    probList.add(pt.getIdx());
                    String eval_list_res = "[";
                    for (Long val : probEvalList) {
                        eval_list_res = eval_list_res.concat(val.toString() + ",");
                    }
                    eval_list_res = eval_list_res.substring(0, eval_list_res.length() - 1);
                    eval_list_res = eval_list_res.concat("]");
                    System.out.println(eval_list_res);

                    String list_res = "[";
                    for (Long val : probList) {
                        list_res = list_res.concat(val.toString() + ",");
                    }
                    list_res = list_res.substring(0, list_res.length() - 1);
                    list_res = list_res.concat("]");
                    System.out.println(list_res);
                    reviewCollecService.updateCollec(USER_ID, eval_list_res, list_res);   //更新该用户的错题集
                }
            }
        }


        //TODO 对题存入 t_pass_collec

        return st;
    }

    public ArrayList<Long> getFromLesson(Integer lesson, Integer totalNum) {
        /**
         * @description: 从对应的 lesson 中抽取题目，难度配比
         * @return: 题目序号列表
         */
        ArrayList<Long> probList = new ArrayList<>();
        for (int i = 10001; i <= 10017; i++) {
            probList.add((long) i);
        }
        Collections.shuffle(probList);

        for (int i = 10259; i <= 10266; i++) {
            probList.add((long) i);
        }


        return probList;
    }

    public ArrayList<Long> getFromNaive(Integer totalNum) {
        /**
         * @description: 随机出 totalNum 道题，从数据库的开头开始，为了暂时模拟数据
         * @return: 题目序号列表
         */
        ArrayList<Long> probList = new ArrayList<>();
        if(totalNum == 25){
            for (int i = 10001; i <= 10017; i++) {
                probList.add((long) i);
            }
            Collections.shuffle(probList);   //打乱顺序
            for (int i = 10259; i <= 10266; i++) {
                probList.add((long) i);
            }
        }else if(totalNum == 20){
            for (int i = 10001; i <= 10015; i++) {
                probList.add((long) i);
            }
            Collections.shuffle(probList);   //打乱顺序
            for (int i = 10259; i <= 10263; i++) {
                probList.add((long) i);
            }
        }else {
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

    public ArrayList<Long> getFromForgetCurve(Integer partNum) {
        /**
         * @description: 按照做过(不论对错)的题目遗忘曲线方式出题，占比 40%
         * @return: 题目序号列表
         */
        ArrayList<Long> probList = new ArrayList<>();

        return probList;
    }

    public ArrayList<Long> getFromSimilar(Integer partNum) {
        /**
         * @description: 根据该 level 内做错的相似题目出题，占比 40%，没有信息则随机
         * @return: 题目序号列表
         */
        ArrayList<Long> probList = new ArrayList<>();

        return probList;
    }

    public ArrayList<Long> getFromNew(Integer partNum) {
        /**
         * @description: 根据用户当前的新知识点出题，占比 10%
         * @return: 题目序号列表
         */
        ArrayList<Long> probList = new ArrayList<>();

        return probList;
    }

    public ArrayList<Long> getHighFrequency(Integer partNum) {
        /**
         * @description: 按照高频知识点出题，如固定搭配，占比 10%
         * @return: 题目序号列表
         */
        ArrayList<Long> probList = new ArrayList<>();

        return probList;
    }


    @GetMapping(path = "/initPaper")
    public SheetTemp initPaper() {
        /**
         * @description: 根据 SettingTemp组卷出题，返回题目数组，并且初始化 sheetTemp
         * @return: 返回初始的 sheetTemp
         */
        //TODO 也应该接受一个 id
        //TODO 实现各种出题逻辑,包括设置选择题和文本题各自的题量
        //setting 中 src: ai  sys: smt  lev: 1-6   prob: 15 20 25
        //15 = 6+6+2+1, 20 = 8+8+2+2, 25 = 10+10+3+2  可以设置个选项，默认只有选择题

        HashMap<Integer, Integer[]> probPartMap = new HashMap<>();
        probPartMap.put(15, new Integer[]{6,6,2,1});
        probPartMap.put(20, new Integer[]{8,8,2,2});
        probPartMap.put(25, new Integer[]{10,10,3,2});
        int forgetCurveIdx = 0;
        int simillarIdx = 1;
        int newIdx = 2;
        int highFrequencyIdx = 3;


        SettingTemp settingTemp = SettingTemp.getInstance();
        ArrayList<Long> probList = new ArrayList<>();
        Integer totalNum = settingTemp.getProbNum();
        Integer level = settingTemp.getLev();
        if(settingTemp.getSrc().equals("ai")){
            //进入 AI 刷题温故知新, 依次接收四个来源
//            probList.addAll(getFromForgetCurve(probPartMap.get(totalNum)[forgetCurveIdx]));
//            probList.addAll(getFromSimilar(probPartMap.get(totalNum)[simillarIdx]));
//            probList.addAll(getFromNew(probPartMap.get(totalNum)[newIdx]));
//            probList.addAll(getHighFrequency(probPartMap.get(totalNum)[highFrequencyIdx]));
        }
        else if(settingTemp.getSrc().equals("lesson")){
            //进入课课练做题，只按照 lesson 抽取, 此处 sys 代表课时
//            Integer lesson = Integer.valueOf(settingTemp.getSys());
//            probList.addAll(getFromLesson(lesson, totalNum));
        }
        else if(settingTemp.getSrc().equals("test")){
            //进入双周测 or 阶段测做题，此处 sys=7-8 表示7-8周
//            String week = settingTemp.getSys();
//            probList.addAll(getFromLesson(lesson, totalNum));
        }
        else if(settingTemp.getSrc().equals("recomnd")){
            //进入推荐练习做题，只按照 lesson 抽取, 此处 sys 代表 redId=8888（参考的试卷）
//            Integer refId = Integer.valueOf(settingTemp.getSys());
//            probList.addAll(getFromLesson(lesson, totalNum));
        }
        else if(settingTemp.getSrc().equals("wrong")){
            //进入错题集做题，此处 sys 无意义
//            probList.addAll(getFromLesson(lesson, totalNum));
        }

        probList = getFromNaive(totalNum);
        //TODO 以上方法暂未实现，暂时使用 naive 覆盖


        SheetTemp st = SheetTemp.getInstance();
        if (st.getSheet_list().size() > 0)  //如果当前 sheet 没有清空，则进行一次清空
            st.setSheet_list(new ArrayList<>());
        st.setNum_list(probList);  // 一个坑，这里是同一个对象，影响了下面的 probList

        st.setId(System.currentTimeMillis());  //试卷 id 的生成: 当前时间的毫秒数

        int optNum = 0, txtNum = 0;
        for (Long probNum : probList) {  //将题目填入 sheet_list
            ProblemAnsTemp pt = new ProblemAnsTemp();

            Problem p = problemService.getProblem(probNum);
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
        exercise.setProb_list(probList.toString());
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

    @GetMapping(path = "/getResultAi")
    public ResultTemp getResultAi(@RequestParam() Long id) {
        return resultTemp;
    }

    @GetMapping(path = "/getResultLesson")
    public ResultTemp getResultLesson(@RequestParam() Long id) {
        return resultTemp;
    }

    @GetMapping(path = "/getResultExtra")
    public ResultTemp getResultExtra(@RequestParam() Long id) {
        return resultTemp;
    }

    @GetMapping(path = "/homepageInitial")
    public HashMap<String, Integer> homepageInitial(){
        // 主页初始化操作
        HashMap<String, Integer> map = new HashMap<String, Integer>();
        map.put("level", 1);
        map.put("num", 25);
        return map;
    }

    @GetMapping(path = "/getHistory")
    public List<ExerciseEvaluation> getHistory() {
        // TODO 加上参数用户 id
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
        // TODO String 转 List 专门做一个函数
        ArrayList<ProblemEvaluation> wrongList = new ArrayList<>();

        try {
            String probEvalStr = reviewCollecService.getCollec(USER_ID).getProb_eval_list();
            ArrayList<Long> probEvalList = new ArrayList<>();
            probEvalStr = probEvalStr.substring(1, probEvalStr.length() - 1);
            String[] probListSplit = probEvalStr.split(",");
            for (String str : probListSplit) {
                probEvalList.add(Long.valueOf(str));
            }
            for (Long probEvalId : probEvalList) {
                wrongList.addAll(problemEvalService.getProblemEvalById(probEvalId));
            }
        } catch (Exception e) {
            System.out.println(getException(e));
        }

        return wrongList;
    }
}
