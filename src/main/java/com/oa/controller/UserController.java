package com.oa.controller;

import com.oa.entity.User;
import com.oa.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    public UserService userService;

    @RequestMapping("/login")
    public String login(User user,HttpServletRequest request,HttpServletResponse response) throws IOException {
        User user1 = userService.login(user);
        if(user1.getUsername() != null){
            request.getSession().setAttribute("user",user1);
            return "comm/index";
        }else{
            return "comm/index";
        }
    }

    /**
     * 退出系统，并删除session
     * @return
     */
    @RequestMapping("/exit")
    public String exit(HttpSession session){
        session.setAttribute("user",null);
        return "user/login";
    }
}
