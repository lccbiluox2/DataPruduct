package com.lcc.controller;


import com.lcc.service.DataFactoryService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/DataFactoryControlle")
public class DataFactoryController {

    private Logger logger = Logger.getLogger(DataFactoryController.class);

    @Resource
    private DataFactoryService dataFactoryService;

    @RequestMapping("/welcome")
    public String  welcome(Model model, HttpServletRequest req, HttpServletResponse res) {

        System.out.println("aaaaaaaaaaa");

        return "index" ;
    }
}
