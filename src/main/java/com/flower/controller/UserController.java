package com.flower.controller;

import com.flower.pojo.User;
import com.flower.service.UserService;
import com.flower.utils.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/logout")
    protected String logout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().invalidate();
//        resp.sendRedirect(req.getContextPath());
        return "redirect:"+"/index.jsp";
    }

    @RequestMapping("/login")
    protected String login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        User loginUser = userService.login(new User(null, username, password, null));

        if (loginUser == null) {
            req.setAttribute("msg1","账号或密码错误");
            req.setAttribute("username",username);
//            req.getRequestDispatcher("pages/signin.jsp").forward(req, resp);
            return "forward:"+"/pages/signin.jsp";
        } else {
            req.getSession().setAttribute("user",loginUser);
            req.getSession().setAttribute("username",username);
//            req.getRequestDispatcher("index.jsp").forward(req, resp);
            return "forward:"+"/index.jsp";
        }
    }
    @RequestMapping("/regist")
    protected String regist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String code = req.getParameter("code");
        User user= WebUtils.copyPaeamToBean(req.getParameterMap(),new User());

        String token = (String) req.getSession().getAttribute(KAPTCHA_SESSION_KEY);
        req.removeAttribute(KAPTCHA_SESSION_KEY);
        if (token != null && token.equalsIgnoreCase(code)) {
            if (userService.existsUsername(username)) {
                req.setAttribute("msg2","账号已存在");
                req.setAttribute("email",email);
//                req.getRequestDispatcher("pages/signout.jsp").forward(req, resp);
                return "forward:"+"/pages/signout.jsp";

            } else {
                userService.registerUser(new User(null, username, password, email));
//                req.getRequestDispatcher("pages/signin.jsp").forward(req, resp);
                return "forward:"+"/pages/signin.jsp";
            }
        } else {
            req.setAttribute("msg2","验证码错误");
            req.setAttribute("username",username);
            req.setAttribute("email",email);
//            req.getRequestDispatcher("pages/signout.jsp").forward(req, resp);
            return "forward:"+"/pages/signout.jsp";
        }
    }

    @RequestMapping("/updateUser")
    protected void UpdateUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
    @RequestMapping("/updateUserPassword")
    protected void UpdateUserPassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }



}
