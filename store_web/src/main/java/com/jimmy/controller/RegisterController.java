package com.jimmy.controller;

import com.jimmy.domain.UUsers;
import com.jimmy.utils.BCryptPasswordUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/register")
public class RegisterController {

    @RequestMapping("/")
    public ModelAndView register() throws Exception{
        ModelAndView mv = new ModelAndView();

        mv.setViewName("");
        return mv;
    }

    @RequestMapping("/doRegister")
    public String doRegister(UUsers users) throws Exception{
        users.setPassword(BCryptPasswordUtils.getEncoderPassword(users.getPassword()));

        return "redirect:";
    }

}
