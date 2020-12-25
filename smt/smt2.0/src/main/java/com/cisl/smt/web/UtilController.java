package com.cisl.smt.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class UtilController {
    /**
     * @description: 项目的其他 url 对应逻辑
     * @author: Hopenx
     * @date: 2020/12/24 4:50 下午
     */

    @GetMapping("/upload")
    public ModelAndView upload(){
        return new ModelAndView("upload");
    }

    @GetMapping("/upload_list")
    public ModelAndView upload_list(){
        return new ModelAndView("upload_list");
    }
}
