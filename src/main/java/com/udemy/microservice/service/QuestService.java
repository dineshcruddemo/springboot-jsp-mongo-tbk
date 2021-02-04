package com.udemy.microservice.service;

import com.udemy.microservice.bean.question;
import com.udemy.microservice.controller.CreateQuestController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestService {

    private  Logger logger = LoggerFactory.getLogger(QuestService.class);

    @Autowired
    private CreateQuestController createQuestController;


}
