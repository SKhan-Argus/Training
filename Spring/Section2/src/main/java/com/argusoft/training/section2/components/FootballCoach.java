package com.argusoft.training.section2.components;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

@Component
@Lazy
public class FootballCoach implements Coach {

    public FootballCoach(){
        System.out.println("Football");
    }
    @Override
    public String getDailyWorkout() {
        return "practice running for 10min";
    }
}
