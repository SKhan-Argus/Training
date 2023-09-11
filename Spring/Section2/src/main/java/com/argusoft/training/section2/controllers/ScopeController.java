package com.argusoft.training.section2.controllers;


import com.argusoft.training.section2.components.Coach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ScopeController {

    private Coach myCoach;
    private Coach myCoach2;

//    @Autowired
//    public ScopeController(@Qualifier("cricketCoach") Coach myCoach, @Qualifier("cricketCoach") Coach myCoach2){
//        this.myCoach = myCoach;
//        this.myCoach2 = myCoach2;
//    }

    @GetMapping("/scope")
    public String getScope(){
        return "This is bean scope.";
    }
}
