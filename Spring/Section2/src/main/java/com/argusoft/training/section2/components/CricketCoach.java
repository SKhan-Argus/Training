package com.argusoft.training.section2.components;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Lazy
//@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class CricketCoach implements Coach{

    public CricketCoach(){
        System.out.println("Cricket");
    }
    @Override
    public String getDailyWorkout() {
        return "practice batting for 10min";
    }

    @PostConstruct
    public void displayConstruct(){
        System.out.println("This is after bean construction.");

    }

    //If scope is prototype, will not be automatically called
    @PreDestroy
    public void displayDestroy(){
        System.out.println("This is before bean destruction.");
    }
}
