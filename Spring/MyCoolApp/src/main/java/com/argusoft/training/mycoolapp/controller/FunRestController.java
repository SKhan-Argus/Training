package com.argusoft.training.mycoolapp.controller;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FunRestController {

    @Value("${myapp.name}")
    private String name;

    @Value("${myapp.city}")
    private String city;

    @GetMapping("/")
    public String sayHello(){
        return "Hello World!";
    }

}
