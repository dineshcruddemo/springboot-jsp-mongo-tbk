package com.udemy.microservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Jspcontroller {
    @RequestMapping("/")
    public String index()
    {
        return "index";
    }

    @RequestMapping("/quest")
    public String CreateQuest()
    {
        return "CreateQuest";
    }
    @RequestMapping("/answer")
    public String AnswerQuest()
    {
        return "AnswerQuest";
    }

}
