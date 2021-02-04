package com.udemy.microservice.bean;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.HashMap;
import java.util.Map;

@Document(collection = "question")
public class question {

    @Id
    private int id;
    private String username;
    private String quest;
    private Map<String, String> answer  = new HashMap<>();;

    public Map<String, String> getAnswer() {
        return answer;
    }

    @Override
    public String toString() {
        return "question{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", quest='" + quest + '\'' +
                ", answer=" + answer +
                '}';
    }

    public void setAnswer(HashMap<String, String> answer) {
        this.answer = answer;
    }

    public question() {
    }

    public question(int id, String username, String quest) {
        this.id = id;
        this.username = username;
        this.quest = quest;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getQuest() {
        return quest;
    }

    public void setQuest(String quest) {
        this.quest = quest;
    }

}
