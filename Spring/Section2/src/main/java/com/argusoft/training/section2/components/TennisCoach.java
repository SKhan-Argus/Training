package com.argusoft.training.section2.components;

import org.springframework.stereotype.Component;


public class TennisCoach implements Coach {

    public TennisCoach(){
        System.out.println("Tennis");
    }
    public String getDailyWorkout(){
        return "Playing tennis for 30min.";
    }

}
