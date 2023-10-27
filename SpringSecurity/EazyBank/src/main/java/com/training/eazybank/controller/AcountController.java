package com.training.eazybank.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AcountController {

    @GetMapping("/myAccount")
    public String getAccountDetails(){
        return "this is my account details.";
    }
}
