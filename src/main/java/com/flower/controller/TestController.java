package com.flower.controller;

import com.flower.pojo.Flower;
import com.flower.service.FlowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/test")
public class TestController {

    @Autowired
    private FlowerService flowerService;

    @RequestMapping("/test1")
    public String testit(HttpServletRequest req, HttpServletResponse resp){
//        Flower flower = flowerService.querryFlowerById(1);
//        req.setAttribute("flower",flower);

        Object url = req.getParameter("url");
//        req.getRequestDispatcher((String) url).forward(req, resp);
        System.out.println(url);
        return "forward:"+(String) url;
    }
}
