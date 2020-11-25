package com.cisl.smt.web;

import com.cisl.smt.po.Answer;
import com.cisl.smt.po.Options;
import com.cisl.smt.po.Problem;
import com.cisl.smt.service.AnswerService;
import com.cisl.smt.service.OptionsService;
import com.cisl.smt.service.PointService;
import com.cisl.smt.web.Temp.ProblemAnsTemp;
import com.cisl.smt.web.Temp.Result;
import com.cisl.smt.web.Temp.SheetTemp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import com.cisl.smt.service.ProblemService;

import java.util.ArrayList;

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

    @GetMapping("/lesson_finish_opt")
    public ModelAndView lesson_finish_opt() {
        ModelAndView mav;
        mav = new ModelAndView("lesson_opt_finish");
        return mav;
    }

    @GetMapping("/lesson_finish_txt")
    public ModelAndView lesson_finish_txt() {
        ModelAndView mav;
        mav = new ModelAndView("lesson_txt_finish");
        return mav;
    }

    @GetMapping("/lesson_detail_opt")
    public ModelAndView lesson_detail_opt() {
        ModelAndView mav;
        mav = new ModelAndView("lesson_opt_detail");
        return mav;
    }

    @GetMapping("/lesson_detail_txt")
    public ModelAndView lesson_detail_txt() {
        ModelAndView mav;
        mav = new ModelAndView("lesson_txt_detail");
        return mav;
    }

    @GetMapping("/test_finish_opt")
    public ModelAndView test_finish_opt() {
        ModelAndView mav;
        mav = new ModelAndView("test_opt_finish");
        return mav;
    }

    @GetMapping("/test_finish_txt")
    public ModelAndView test_finish_txt() {
        ModelAndView mav;
        mav = new ModelAndView("test_txt_finish");
        return mav;
    }

    @GetMapping("/test_detail_opt")
    public ModelAndView test_detail_opt() {
        ModelAndView mav;
        mav = new ModelAndView("test_opt_detail");
        return mav;
    }

    @GetMapping("/test_detail_txt")
    public ModelAndView test_detail_txt() {
        ModelAndView mav;
        mav = new ModelAndView("test_txt_detail");
        return mav;
    }

    @GetMapping("/practise_finish_opt")
    public ModelAndView practise_finish_opt() {
        ModelAndView mav;
        mav = new ModelAndView("practise_opt_finish");
        return mav;
    }

    @GetMapping("/practise_finish_txt")
    public ModelAndView practise_finish_txt() {
        ModelAndView mav;
        mav = new ModelAndView("practise_txt_finish");
        return mav;
    }

    @GetMapping("/practise_detail_opt")
    public ModelAndView practise_detail_opt() {
        ModelAndView mav;
        mav = new ModelAndView("practise_opt_detail");
        return mav;
    }

    @GetMapping("/practise_detail_txt")
    public ModelAndView practise_detail_txt() {
        ModelAndView mav;
        mav = new ModelAndView("practise_txt_detail");
        return mav;
    }

    @GetMapping("/wrong_finish_opt")
    public ModelAndView wrong_finish_opt() {
        ModelAndView mav;
        mav = new ModelAndView("wrong_opt_finish");
        return mav;
    }

    @GetMapping("/wrong_finish_txt")
    public ModelAndView wrong_finish_txt() {
        ModelAndView mav;
        mav = new ModelAndView("wrong_txt_finish");
        return mav;
    }

    @GetMapping("/recomnd_finish_opt")
    public ModelAndView recomnd_finish_opt() {
        ModelAndView mav;
        mav = new ModelAndView("recomnd_opt_finish");
        return mav;
    }

    @GetMapping("/recomnd_finish_txt")
    public ModelAndView recomnd_finish_txt() {
        ModelAndView mav;
        mav = new ModelAndView("recomnd_txt_finish");
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
        for (ProblemAnsTemp pt: tmpList) {
            if(pt.getIdx().equals(idx)){
                System.out.println(idx);
                pt.setChoice(choice);
                pt.setFinish(finish);
                pt.setChoice_text(choice_text);
            }
        }
        st.setSheet_list(tmpList);

        return st;
    }

    @GetMapping(path = "/getdetail")
    public SheetTemp getDetail(@RequestParam() Long id) {
        /**
         * @description: 获得数据库中某个 SheetTemp 记录
         */
        SheetTemp st = SheetTemp.getInstance();   //获得唯一单例
        //TODO 不是返回当前的全局 SheetTemp 而是去数据库中抽取

        return st;
    }

    @GetMapping(path = "/initPaper")
    public SheetTemp getPaper() {
        /**
         * @description: 组卷出题，返回题目数组，并且初始化 sheetTemp
         * @return: 返回初始的 sheetTemp
         */
        //TODO 也应该接受一个 id
        //TODO 实现各种出题逻辑,包括设置选择题和文本题各自的题量
        //TODO 实现试卷 id 的生成算法
        ArrayList<Long> probList = new ArrayList<>();
        for (int i = 10001; i <= 10017; i++) {
            probList.add((long) i);
        }
        for (int i = 10259; i <= 10266; i++) {
            probList.add((long) i);
        }
        SheetTemp st = SheetTemp.getInstance();   //同时将设置的 paper 添加到 sheetTemp 中
        if (st.getNum_list().size() > 0)
            return st;
        st.setNum_list(probList);  // 一个坑，这里是同一个对象，影响了下面的 probList
        st.setOpt_num((long) 17);
        st.setTxt_num((long) 8);
        st.setId((long) 8888);

        for (Long probNum : probList) {
            ProblemAnsTemp pt = new ProblemAnsTemp();
            Problem p = problemService.getProblem(probNum);
            pt.setIdx(probNum);
            pt.setFinish((long) 0);   //默认未完成状态
            pt.setPoint(pointService.getPoint(p.getPoint_id()).getPoint_text());
            pt.setProb_text(p.getProb_text());
            pt.setAnalysis(answerService.getAnswer(probNum).getAnalysis_text());
            pt.setAns(answerService.getAnswer(probNum).getAnswer_text());
            st.addSheet_list(pt);
        }

        return st;
    }

    @PostMapping(path = "/postSetting")
    public String postSetting(@RequestParam("src") String src,
                              @RequestParam("sys") String sys,
                              @RequestParam("lev") Long lev,
                              @RequestParam("probNum") Long probNum){
        return null;
    }

    @GetMapping(path = "getResultAi")
    public Result getResultAi(@RequestParam() Long id){
        return new Result();
    }
}
