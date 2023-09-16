package com.argusoft.training.validation;


import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class Customer {

    private String firstName;

    @NotNull(message = "is required")
    @Size(min = 3, message = "is required")
    private String lastName="";


}
