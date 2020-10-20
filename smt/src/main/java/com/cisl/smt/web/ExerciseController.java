package com.cisl.smt.web;

import com.cisl.smt.po.Options;
import com.cisl.smt.po.Problem;
import com.cisl.smt.service.OptionsService;
import com.cisl.smt.web.Temp.ProblemAnsTemp;
import com.cisl.smt.web.Temp.SheetTemp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import com.cisl.smt.service.ProblemService;

@RestController
public class ExerciseController {

    @Autowired
    private ProblemService problemService;

    @Autowired
    private OptionsService optionsService;

    @GetMapping("/exercise/{num}")
    public ModelAndView exercise(@PathVariable Long num){
        ModelAndView mav;
        if (num == 1){
            mav = new ModelAndView("Q1");
        }
        else if (num == 2){
            mav = new ModelAndView("Q2");
        }
        else {
            mav = new ModelAndView("Q17");
        }
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
        SheetTemp st = SheetTemp.getInstance();   //获得唯一单例
        return st;
    }

    @PostMapping("/postSheet")
    public String postSheet(@RequestParam("idx") Long idx,
                            @RequestParam("finish") Long finish,
                            @RequestParam("choice") String choice,
                            @RequestParam("text") String text){
        ProblemAnsTemp pt = new ProblemAnsTemp();
        pt.setIdx(idx);
        pt.setFinish(finish);
        pt.setChoice(choice);
        pt.setText(text);

        SheetTemp st = SheetTemp.getInstance();   //获得唯一单例
        boolean found = false;
        for (ProblemAnsTemp tmp:
                st.getSheet_list()) {
            if(pt.getIdx() == tmp.getIdx()){
                tmp.setChoice(pt.getChoice());
                tmp.setText(pt.getText());
                found = true;
                break;
            }
        }
        if(!found) st.addSheet_list(pt);

        return st.toString();
    }
}
