package com.cisl.smt.web;

import com.cisl.smt.po.User;
import com.cisl.smt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

@RestController
public class AuthController {
    /**
     * @description: 登录与注册的控制器
     * @author: Hopenx
     * @date: 2020-10-22 21:36
     */

    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView("login");
        return modelAndView;
    }

    @GetMapping("/register")
    public ModelAndView register() {
        ModelAndView modelAndView = new ModelAndView("register");
        return modelAndView;
    }

    @PostMapping("/postRegister")
    public String postRegister(@RequestParam("username") String username,
                               @RequestParam("password") String password,
                               @RequestParam("re_password") String re_password,
                               HttpServletResponse response) {

        System.out.println(userService.getUserByUsername(username));
        if(userService.getUserByUsername(username) != null){
            System.out.println("exist");
            return "Exist";
        }
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        userService.saveUser(user);
        User tmp = userService.getUserByUsername(username);
        Long user_id = tmp.getUser_id();
        Cookie cookie = new Cookie("user_id",user_id.toString());
        response.addCookie(cookie);

        return user.toString();
    }

    @PostMapping("/postLogin")
    public String postLogin(@RequestParam("username") String username,
                            @RequestParam("password") String password,
                            HttpServletResponse response) {

        User tmp = userService.getUserByUsername(username);

        if(tmp == null){
            return "Fail";
        }

        if(password.equals(tmp.getPassword())){     //比较字符串必须用 equals
            Long user_id = tmp.getUser_id();
            Cookie cookie = new Cookie("user_id",user_id.toString());
            response.addCookie(cookie);
            return "OK";
        }

        else return "Fail";

    }

}
