package com.cisl.smt.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ExerciseController {

    @GetMapping("/exercise/{num}")
    public ModelAndView exercise(@PathVariable Integer num){
        ModelAndView mav;
        if (num.compareTo(1) == 0){
            mav = new ModelAndView("Q1");
        }
        else if (num.compareTo(2) == 0){
            mav = new ModelAndView("Q2");
        }
        else {
            mav = new ModelAndView("Q17");
        }
        return mav;
    }
}
