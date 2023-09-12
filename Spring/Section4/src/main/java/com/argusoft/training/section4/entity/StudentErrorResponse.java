package com.argusoft.training.section4.entity;

import lombok.Data;

@Data
public class StudentErrorResponse {

    private int status;
    private String message;
    private long timeStamp;

}
