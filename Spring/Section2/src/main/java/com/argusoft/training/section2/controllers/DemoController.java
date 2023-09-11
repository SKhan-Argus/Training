package com.argusoft.training.section2.controllers;

import com.argusoft.training.section2.components.Coach;
import com.argusoft.training.section2.components.CricketCoach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {



    private Coach myCoach;

    @Autowired
    public DemoController(@Qualifier("tennisCoach") Coach coach){
        this.myCoach=coach;

    }

    @GetMapping("/daily")
    public String getDailyWorkout(){
        return myCoach.getDailyWorkout();
    }



}
