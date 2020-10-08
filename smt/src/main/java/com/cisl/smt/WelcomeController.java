package com.cisl.smt;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;

@RestController
public class WelcomeController {

    @GetMapping("/welcome")
    public ModelAndView welcome(){
        ModelAndView modelAndView = new ModelAndView("welcome");
        modelAndView.addAllObjects(new HashMap<String, String>(){
            {
                this.put("name","Andy");
            }
        });
        return modelAndView;

    }
}
