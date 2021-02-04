package com.udemy.microservice.controller;

import com.udemy.microservice.bean.question;
import com.udemy.microservice.repository.QuestRepos;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.lang.reflect.Array;
import java.util.*;


@Controller
public class CreateQuestController{
    private final Logger logger = LoggerFactory.getLogger(CreateQuestController.class);

    @Autowired
    private QuestRepos questRepos;

    @PostMapping("/create-post")
    public String registerQuestion(question question)
    {
        logger.info("{}",question.toString());
        Optional<question> x = Optional.ofNullable(questRepos.findByQuest(question.getQuest()));
        if(!x.isPresent()){
        List<question> questions = questRepos.findAll();
        question.setId(questions.size());
        questRepos.save(question);
        return "success";}
        else
        {
            return "failure";
        }
    }

    @GetMapping("/quest/{id}")
    public String getQuestion(@PathVariable int id)
    {
        Optional<question> x = questRepos.findById(id);
        if(x.isPresent()) return x.get().getQuest();
        return "something wrong";
    }

    @RequestMapping("/allQuest")
    public String getAllQuestions(Model model)
    {
        List<question> list = questRepos.findAll();
        Collections.reverse(list);
        model.addAttribute("questions",list);
        return "AnswerQuest";
    }


    @PostMapping("/answerHere")
    public String getCurrentAnswer(String quest, String uname, String answers)
    {
        logger.info("{}, {}, {}",quest,uname, answers);
        question x = questRepos.findByQuest(quest);
        question y = x;
        questRepos.delete(x);
        y.getAnswer().put(uname, answers);
        questRepos.save(y);
        logger.info("{}",y.toString());
        return "SuccessAnswer";
    }
}
