package com.udemy.microservice.repository;

import com.udemy.microservice.bean.question;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.CrudRepository;

public interface QuestRepos extends MongoRepository<question, Integer> {
    public question findByQuest(String quest);
}
