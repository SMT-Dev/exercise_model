package com.cisl.smt.web;

import com.cisl.smt.dao.ExerciseEvalRepository;
import com.cisl.smt.po.*;
import com.cisl.smt.service.*;
import com.cisl.smt.web.Temp.ProblemAnsTemp;
import com.cisl.smt.web.Temp.Result;
import com.cisl.smt.web.Temp.SheetTemp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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

    @GetMapping(path = "/getJudgeDetail")
    public SheetTemp getJudgeDetail(@RequestParam() Long id) {
        /**
         * @description: 获得数据库中某个 SheetTemp 记录,属于评估后的记录
         */
        SheetTemp st = SheetTemp.getInstance();   //获得唯一单例
        //TODO 不是返回当前的全局 SheetTemp 而是去数据库中抽取


        //最新的 SheetTemp 存入 t_exer_eval
        // exercise 的 ID 自增, exer_eval_id 为自增。主键 id 都不要去人为设置
        // t_exer_eval 中保存了 user_id 和 exercise_id
        ExerciseEvaluation ee = new ExerciseEvaluation();
        ee.setExer_eval_score((long) 82);
        ee.setConsume_time((long) 120);
        ee.setExer_eval_time(sdf.format(new Date()));
//        ee.setExercise_id(st.getId());
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

            if (pe.getProb_eval_res() == 0) {   // 如果是错题
                String probListStr = "";
                ArrayList<Long> probList = new ArrayList<>();
                try {
                    probListStr = reviewCollecService.getCollec(USER_ID).getProb_eval_list();
                    probListStr = probListStr.substring(1, probListStr.length() - 1);
                    String[] probListSplit = probListStr.split(",");
                    for (String str : probListSplit) {
                        probList.add(Long.valueOf(str));
                    }
                } catch (NullPointerException e) {
                    //如果暂时没有此用户的记录，就 new 一个空的
                    reviewCollecService.setCollec(USER_ID, "");
                }

                probList.add(pt.getIdx());
                String res = "[";
                for (Long val : probList) {
                    res = res.concat(val.toString() + ",");
                }
                res = res.substring(0, res.length() - 1);
                res = res.concat("]");
                System.out.println(res);
                reviewCollecService.setCollec(USER_ID, res);   //设置错题集
            }
        }


        //TODO 对题存入 t_pass_collec


        return st;
    }

    public ArrayList<Long> getForgetCurve() {
        /**
         * @description: 按照遗忘曲线方式出题，占比 40%
         * @return: 题目序号列表
         */
        ArrayList<Long> probList = new ArrayList<>();

        return probList;
    }

    public ArrayList<Long> getSimilar() {
        /**
         * @description: 根据做错的相似题目出题，占比 40%
         * @return: 题目序号列表
         */
        ArrayList<Long> probList = new ArrayList<>();

        return probList;
    }

    public ArrayList<Long> getNew() {
        /**
         * @description: 根据用户当前的新知识点出题，占比 10%
         * @return: 题目序号列表
         */
        ArrayList<Long> probList = new ArrayList<>();

        return probList;
    }

    public ArrayList<Long> getHighFrequency() {
        /**
         * @description: 按照高频知识点出题，如固定搭配，占比 10%
         * @return: 题目序号列表
         */
        ArrayList<Long> probList = new ArrayList<>();

        return probList;
    }


    @GetMapping(path = "/initPaper")
    public SheetTemp getPaper() {
        /**
         * @description: 组卷出题，返回题目数组，并且初始化 sheetTemp
         * @return: 返回初始的 sheetTemp
         */
        //TODO 也应该接受一个 id
        //TODO 实现各种出题逻辑,包括设置选择题和文本题各自的题量

        ArrayList<Long> probList = new ArrayList<>();
        for (int i = 10001; i <= 10017; i++) {
            probList.add((long) i);
        }
        for (int i = 10259; i <= 10266; i++) {
            probList.add((long) i);
        }
        SheetTemp st = SheetTemp.getInstance();   //同时将设置的 paper 添加到 sheetTemp 中
        if (st.getNum_list().size() > 0)  //如果当前 sheet 没有清空，则不生成新的
            return st;
        st.setNum_list(probList);  // 一个坑，这里是同一个对象，影响了下面的 probList
        st.setOpt_num((long) 17);
        st.setTxt_num((long) 8);
        st.setId(System.currentTimeMillis());  //试卷 id 的生成: 当前时间的毫秒数

        for (int i = 0; i < probList.size(); i++) {
            Long probNum = probList.get(i);
            ProblemAnsTemp pt = new ProblemAnsTemp();
            if (i < 17)
                pt.setType("opt");
            else pt.setType("txt");  // 设置题型

            Problem p = problemService.getProblem(probNum);
            pt.setIdx(probNum);
            pt.setFinish((long) 0);   //默认未完成状态
            pt.setPoint(pointService.getPoint(p.getPoint_id()).getPoint_text());
            pt.setProb_text(p.getProb_text());
            pt.setAnalysis(answerService.getAnswer(probNum).getAnalysis_text());
            pt.setAns(answerService.getAnswer(probNum).getAnswer_text());
            st.addSheet_list(pt);
        }

        Exercise exercise = new Exercise();
        exercise.setExercise_id(st.getId());
        exercise.setGrammar_id((long) 4);
        exercise.setProb_list(probList.toString());
        exercise.setExercise_attr("ai");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        exercise.setUpdate_time(sdf.format(new Date()));

        exerciseService.insertExercise(exercise);

        return st;
    }

    @PostMapping(path = "/postSetting")
    public String postSetting(@RequestParam("src") String src,
                              @RequestParam("sys") String sys,
                              @RequestParam("lev") Long lev,
                              @RequestParam("probNum") Long probNum) {
        return null;
    }

    @GetMapping(path = "getResultAi")
    public Result getResultAi(@RequestParam() Long id) {
        return new Result();
    }

    @GetMapping(path = "getHistory")
    public List<ExerciseEvaluation> getHistory() {
        // TODO 加上参数用户 id
        return exerciseEvalService.getExerciseEval(USER_ID);
    }

    @GetMapping(path = "getWrong")
    public ArrayList<ProblemEvaluation> getWrong() {
        // TODO String 转 List 专门做一个函数
        ArrayList<ProblemEvaluation> wrongList = new ArrayList<>();

        try {
            String probEvalStr = reviewCollecService.getCollec(USER_ID).getProb_eval_list();
            ArrayList<Long> probList = new ArrayList<>();
            probEvalStr = probEvalStr.substring(1, probEvalStr.length() - 1);
            String[] probListSplit = probEvalStr.split(",");
            for (String str : probListSplit) {
                probList.add(Long.valueOf(str));
            }
            for (Long probNum : probList) {
                wrongList.addAll(problemEvalService.getProblemEval(USER_ID));
            }
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return wrongList;
    }
}
