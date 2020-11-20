package com.cisl.smt.web;

import com.cisl.smt.po.Answer;
import com.cisl.smt.po.Options;
import com.cisl.smt.po.Problem;
import com.cisl.smt.service.AnswerService;
import com.cisl.smt.service.OptionsService;
import com.cisl.smt.service.PointService;
import com.cisl.smt.web.Temp.ProblemAnsTemp;
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
    public ModelAndView exercise_opt(){
        ModelAndView mav;
        mav = new ModelAndView("prob_opt");
        return mav;
    }

    @GetMapping("/exercise_txt")
    public ModelAndView exercise_txt(){
        ModelAndView mav;
        mav = new ModelAndView("prob_txt");
        return mav;
    }

    @GetMapping("/lesson_finish_opt")
    public ModelAndView lesson_finish_opt(){
        ModelAndView mav;
        mav = new ModelAndView("lesson_opt_finish");
        return mav;
    }

    @GetMapping("/lesson_finish_txt")
    public ModelAndView lesson_finish_txt(){
        ModelAndView mav;
        mav = new ModelAndView("lesson_txt_finish");
        return mav;
    }

    @GetMapping("/lesson_detail_opt")
    public ModelAndView lesson_detail_opt(){
        ModelAndView mav;
        mav = new ModelAndView("lesson_opt_detail");
        return mav;
    }

    @GetMapping("/lesson_detail_txt")
    public ModelAndView lesson_detail_txt(){
        ModelAndView mav;
        mav = new ModelAndView("lesson_txt_detail");
        return mav;
    }

    @GetMapping("/test_finish_opt")
    public ModelAndView test_finish_opt(){
        ModelAndView mav;
        mav = new ModelAndView("test_opt_finish");
        return mav;
    }

    @GetMapping("/test_finish_txt")
    public ModelAndView test_finish_txt(){
        ModelAndView mav;
        mav = new ModelAndView("test_txt_finish");
        return mav;
    }

    @GetMapping("/test_detail_opt")
    public ModelAndView test_detail_opt(){
        ModelAndView mav;
        mav = new ModelAndView("test_opt_detail");
        return mav;
    }

    @GetMapping("/test_detail_txt")
    public ModelAndView test_detail_txt(){
        ModelAndView mav;
        mav = new ModelAndView("test_txt_detail");
        return mav;
    }

    @GetMapping("/practise_finish_opt")
    public ModelAndView practise_finish_opt(){
        ModelAndView mav;
        mav = new ModelAndView("practise_opt_finish");
        return mav;
    }

    @GetMapping("/practise_finish_txt")
    public ModelAndView practise_finish_txt(){
        ModelAndView mav;
        mav = new ModelAndView("practise_txt_finish");
        return mav;
    }

    @GetMapping("/practise_detail_opt")
    public ModelAndView practise_detail_opt(){
        ModelAndView mav;
        mav = new ModelAndView("practise_opt_detail");
        return mav;
    }

    @GetMapping("/practise_detail_txt")
    public ModelAndView practise_detail_txt(){
        ModelAndView mav;
        mav = new ModelAndView("practise_txt_detail");
        return mav;
    }

    @GetMapping("/wrong_finish_opt")
    public ModelAndView wrong_finish_opt(){
        ModelAndView mav;
        mav = new ModelAndView("wrong_opt_finish");
        return mav;
    }

    @GetMapping("/wrong_finish_txt")
    public ModelAndView wrong_finish_txt(){
        ModelAndView mav;
        mav = new ModelAndView("wrong_txt_finish");
        return mav;
    }

    @GetMapping("/recomnd_finish_opt")
    public ModelAndView recomnd_finish_opt(){
        ModelAndView mav;
        mav = new ModelAndView("recomnd_opt_finish");
        return mav;
    }

    @GetMapping("/recomnd_finish_txt")
    public ModelAndView recomnd_finish_txt(){
        ModelAndView mav;
        mav = new ModelAndView("recomnd_txt_finish");
        return mav;
    }

    @GetMapping(path = "/getProblem")
    public Problem getProblem(@RequestParam() Long num){
        Problem pb = problemService.getProblem(num);
        return pb;
    }

    @GetMapping(path = "/getOptions")
    public Options getOptions(@RequestParam() Long id){
        Options op = optionsService.getOptions(id);
        return op;
    }

    @GetMapping(path = "/getSheet")
    public SheetTemp getSheet(){
        return SheetTemp.getInstance();
    }

    @PostMapping("/postSheet")
    public String postSheet(@RequestParam("idx") Long idx,
                            @RequestParam("finish") Long finish,
                            @RequestParam("choice") String choice,
                            @RequestParam("choice_text") String choice_text){
        ProblemAnsTemp pt = new ProblemAnsTemp();
        pt.setIdx(idx);
        pt.setFinish(finish);
        pt.setChoice(choice);
        pt.setChoice_text(choice_text);

        SheetTemp st = SheetTemp.getInstance();   //获得唯一单例
        boolean found = false;
        for (ProblemAnsTemp tmp:
                st.getSheet_list()) {
            if(pt.getIdx() == tmp.getIdx()){
                tmp.setChoice(pt.getChoice());
                tmp.setChoice_text(pt.getChoice_text());
                found = true;
                break;
            }
        }
        if(!found){
            pt.setAns(answerService.getAnswer(idx).getAnswer_text());
            pt.setAnalysis(answerService.getAnswer(idx).getAnalysis_text());
            pt.setProb_text(problemService.getProblem(idx).getProb_text());
            Long point_id = problemService.getProblem(idx).getPoint_id();
            pt.setPoint(pointService.getPoint(point_id).getPoint_text());
            st.addSheet_list(pt);
        }
        return st.toString();
    }

    @GetMapping(path = "/getdetail")
    public SheetTemp getDetail(){
        /**
         * @description: 获得该套题答卷情况，返回 SheetTemp 类
         */
        SheetTemp st = SheetTemp.getInstance();   //获得唯一单例
        //TODO  记得填满为 25 个！！
        return st;
    }

    @GetMapping(path = "/getPaper")
    public ArrayList<Long> getPaper(){
        /**
         * @description: 组卷出题，返回题目数组
         */
        //TODO 实现各种出题逻辑
        ArrayList<Long> arrayList = new ArrayList<>();
        for (int i = 10001; i <= 10025; i++) {
            arrayList.add((long) i);
        }
        return arrayList;
    }
}
