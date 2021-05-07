package com.cisl.smt.web;

import com.cisl.smt.dao.AnswerRepository;
import com.cisl.smt.dao.OptionsRepository;
import com.cisl.smt.dao.PointRepository;
import com.cisl.smt.dao.ProblemRepository;
import com.cisl.smt.po.Options;
import com.cisl.smt.po.Point;
import com.cisl.smt.po.Problem;
import com.cisl.smt.web.Temp.ProblemDetail;
import com.cisl.smt.web.Temp.SheetTemp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.util.ClassUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
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

    @GetMapping("/preview")
    public ModelAndView preview() {
        ModelAndView mav;
        mav = new ModelAndView("preview");
        return mav;
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

    @GetMapping("/listAllPoint")
    public ArrayList<Point> listAllPoint(){
        return new ArrayList<>(pointRepository.getAllPoint());
    }

    Boolean checkUnique(String point_text){
        ArrayList<Point> pointList = listAllPoint();
        for(Point point : pointList){
            if(point.getPoint_text().equals(point_text))
                return false;
        }
        return true;
    }

    @PostMapping("/editPoint")
    public String editPoint(@RequestParam("point_id") Long point_id,
                            @RequestParam("point_text") String point_text){
        try {
            if(!checkUnique(point_text))
                return "已有重复考点";
            pointRepository.updatePoint(point_id, point_text);
        } catch (Exception e) {
            e.printStackTrace();
            return e.toString();
        }
        return "OK";
    }

    @PostMapping("/addPoint")
    public String addPoint(@RequestParam("grammar_id") Long grammar_id,
                            @RequestParam("point_text") String point_text){
        try {
            if(!checkUnique(point_text))
                return "已有重复考点";
            Long point_id = pointRepository.getLastPoint_id() + 1;
            pointRepository.insertPoint(point_id, grammar_id, point_text);
        } catch (Exception e) {
            e.printStackTrace();
            return e.toString();
        }
        return "OK";
    }

    @GetMapping("/searchProb")
    public ArrayList<ProblemDetail> searchProb(@RequestParam("text") String input_text) {  //要用 RequestParam
        ArrayList<ProblemDetail> probDetList = new ArrayList<>();
        if(input_text == null || input_text.length() == 0) {
            return probDetList;
        }
        List<Problem> probList = problemRepository.getAllProblem();
        try {
            for (Problem prob : probList) {  //检查是否有匹配的题干
                String probTxt = prob.getProb_text();
                if (purify(probTxt).contains(purify(input_text)))
                    probDetList.add(getProblemDetail(prob.getProb_id()));

            }
        } catch(Exception e){
                e.printStackTrace();
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
            problemDetail.setPoint_id(problem.getPoint_id());
            problemDetail.setBlank_num(problem.getBlank_num());
            problemDetail.setAnswer_text(answerRepository.getAnswer(problem.getProb_id()).getAnswer_text());
            problemDetail.setAnalysis(answerRepository.getAnswer(problem.getProb_id()).getAnalysis_text());
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        return problemDetail;
    }

    public String purify(String raw){
        //筛选出所有字母
        StringBuilder sb = new StringBuilder("");
        for (int i = 0; i < raw.length(); i++) {
            char c = raw.charAt(i);
            if(Character.isLowerCase(c) || Character.isUpperCase(c))
                sb.append(c);
        }
        return sb.toString();
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
                              @RequestParam("point_id") Long point_id,
                              @RequestParam("blank_num") Long blank_num,
                              @RequestParam("mode") Long mode) {
        try {
            if (mode == 0) {   //修改模式
                optionsRepository.updateOptions(prob_id, optionA, optionB, optionC, optionD);
                answerRepository.updateAnswer(prob_id, analysis, answer);
                problemRepository.updateProblemByPoint_id(prob_id, prob_text, prob_attr, prob_diff, prob_level, lesson_id, point_id, blank_num);
            } else if (mode == 1) {   //新增模式
                List<Problem> probList = problemRepository.getAllProblem();
                for (Problem prob: probList) {  //检查是否有重复题目
                    String probTxt = prob.getProb_text();
                    if(purify(probTxt).equals(purify(prob_text)))
                        return "已有重复题目: "+prob.getProb_id().toString();
                }
                //难点：确保这三条语句原子性操作
                prob_id = problemRepository.getLastProb_id() + 1;  //ID 顺次加一
                optionsRepository.insertOptions(prob_id, optionA, optionB, optionC, optionD);
                answerRepository.insertAnswer(prob_id, analysis, answer);

                Long grammar_id = calGrammar_id(lesson_id, prob_level);
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

    @PostMapping("/fileUpload")
    public String singleImage(@RequestParam("file") MultipartFile file, HttpServletRequest request) throws FileNotFoundException {  //参数名需与前端文件标签名一样
        //获取项目classes/static的地址
        String path = ClassUtils.getDefaultClassLoader().getResource("static").getPath();  //static
        String fileName = file.getOriginalFilename();  //获取文件名  xxx.jpg
        //图片访问URI(即除了协议、地址和端口号的URL)
        String url_path = "image/_prob"+ File.separator+fileName;
        System.out.println(("图片访问uri："+url_path));
        String savePath = path+File.separator+url_path;  //图片保存路径
        System.out.println(("图片保存地址："+savePath));
        File saveFile = new File(savePath);
//        if (!saveFile.exists()){
//            saveFile.mkdirs();
//        }
        try {
            file.transferTo(saveFile);  //将临时存储的文件移动到真实存储路径下
        } catch (IOException e) {
            e.printStackTrace();
        }
        //返回图片访问地址
        System.out.println(url_path);
        return url_path;
    }


}
