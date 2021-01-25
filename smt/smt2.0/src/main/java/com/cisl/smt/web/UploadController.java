package com.cisl.smt.web;

import com.cisl.smt.dao.AnswerRepository;
import com.cisl.smt.dao.OptionsRepository;
import com.cisl.smt.dao.PointRepository;
import com.cisl.smt.dao.ProblemRepository;
import com.cisl.smt.po.Options;
import com.cisl.smt.po.Problem;
import com.cisl.smt.web.Temp.ProblemDetail;
import com.cisl.smt.web.Temp.SheetTemp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@RestController
public class UploadController {
    /**
     * @description: 项目的题库上传对应逻辑
     * @author: Hopenx
     * @date: 2020/12/24 4:50 下午
     */

    @Autowired
    private ProblemRepository problemRepository;

    @Autowired
    private OptionsRepository optionsRepository;

    @Autowired
    private AnswerRepository answerRepository;

    @Autowired
    private PointRepository pointRepository;

    public Long calGrammar_id(Long lesson_id, String prob_level){
        if(lesson_id < 10)
            prob_level += "0";
        return Long.valueOf(prob_level + lesson_id.toString());
    }

    @GetMapping("/upload")
    public ModelAndView upload() {
        return new ModelAndView("upload");
    }

    @GetMapping("/upload_list")
    public ModelAndView upload_list() {
        return new ModelAndView("upload_list");
    }

    @GetMapping("/listAllProb")
    public ArrayList<ProblemDetail> listAllProb(@Param("level") String level,
                                                @Param("lesson_id") Long lesson_id) {
        ArrayList<ProblemDetail> probDetList = new ArrayList<>();
        List<Problem> problemList = problemRepository.getProblemByLevelAndLesson_id(level, lesson_id);
        for (Problem problem : problemList) {
            try {
                ProblemDetail problemDetail = getProblemDetail(problem.getProb_id());
                probDetList.add(problemDetail);
            } catch (NullPointerException e) {
                System.out.println(problem);
            }
        }
        return probDetList;
    }

    @GetMapping("/getProblemDetail")
    public ProblemDetail getProblemDetail(@RequestParam("prob_id") Long prob_id) {
        Problem problem = problemRepository.getProblemByProb_id(prob_id);
        ProblemDetail problemDetail = new ProblemDetail();
        try {
            problemDetail.setProb_id(problem.getProb_id());
            Options options = optionsRepository.getOptions(problem.getOptions_id());
            String options_text = "";
            if (options.getOption_a() != null && options.getOption_a().length() != 0) {
                options_text = "【A】" + options.getOption_a() + "【B】" + options.getOption_b() + "【C】" + options.getOption_c();
                if (options.getOption_d() != null && options.getOption_d().length() > 0)
                    options_text += "【D】" + options.getOption_d();
            } else {
                if (problem.getBlank_num() == null)
                    problem.setBlank_num((long) 0);
                options_text = "空行数量：" + problem.getBlank_num().toString();
            }
            problemDetail.setOptions(options_text);
            problemDetail.setProb_text(problem.getProb_text());
            problemDetail.setProb_attr(problem.getProb_attr());
            problemDetail.setProb_level(problem.getProb_level());
            problemDetail.setProb_diff(problem.getProb_diff());
            problemDetail.setLesson_id(problem.getLesson_id());
            problemDetail.setPoint_text(pointRepository.getPoint(problem.getPoint_id()).getPoint_text());
            problemDetail.setBlank_num(problem.getBlank_num());
            problemDetail.setAnswer_text(answerRepository.getAnswer(problem.getProb_id()).getAnswer_text());
            problemDetail.setAnalysis(answerRepository.getAnswer(problem.getProb_id()).getAnalysis_text());
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        return problemDetail;
    }

    @PostMapping("/postProblem")
    public String postProblem(@RequestParam("prob_id") Long prob_id,
                              @RequestParam("optionA") String optionA,
                              @RequestParam("optionB") String optionB,
                              @RequestParam("optionC") String optionC,
                              @RequestParam("optionD") String optionD,
                              @RequestParam("answer") String answer,
                              @RequestParam("analysis") String analysis,
                              @RequestParam("prob_text") String prob_text,
                              @RequestParam("prob_attr") String prob_attr,
                              @RequestParam("prob_diff") String prob_diff,
                              @RequestParam("prob_level") String prob_level,
                              @RequestParam("lesson_id") Long lesson_id,
                              @RequestParam("point_text") String point_text,
                              @RequestParam("blank_num") Long blank_num,
                              @RequestParam("mode") Long mode) {
        try {
            if (mode == 0) {   //修改模式
                optionsRepository.updateOptions(prob_id, optionA, optionB, optionC, optionD);
                answerRepository.updateAnswer(prob_id, analysis, answer);
                Long point_id = problemRepository.getProblemByProb_id(prob_id).getPoint_id();
                problemRepository.updateProblemByPoint_id(prob_id, prob_text, prob_attr, prob_diff, prob_level, lesson_id, point_id, blank_num);
            } else if (mode == 1) {   //新增模式
                prob_id = problemRepository.getLastProb_id() + 1;  //ID 顺次加一
                optionsRepository.insertOptions(prob_id, optionA, optionB, optionC, optionD);
                answerRepository.insertAnswer(prob_id, analysis, answer);
                long point_id = -1;
                Long grammar_id = calGrammar_id(lesson_id, prob_level);
                if (point_text != null && point_text.length() > 0) {
                    point_id = pointRepository.getLastPoint_id() + 1;    //ID 顺次加一
                    pointRepository.insertPoint(point_id, grammar_id, point_text);
                }
                problemRepository.insertProblem(prob_id, grammar_id, point_id, prob_attr, prob_diff, prob_level, prob_text, prob_id, prob_id, lesson_id, blank_num);
            }
        }catch (Exception e){
            e.printStackTrace();
            return "Fail";
        }
        return "OK";
    }

    @PostMapping("/deleteProb")
    public String deleteProb(@RequestParam("prob_id") Long prob_id){
        try {
            String prob_text = problemRepository.getProblemByProb_id(prob_id).getProb_text();
            problemRepository.markDeleteProblem(prob_id, "【题目已被删除】" + prob_text);
        } catch (Exception e){
            e.printStackTrace();
            return "Fail";
        }
        return "OK";
    }


}
