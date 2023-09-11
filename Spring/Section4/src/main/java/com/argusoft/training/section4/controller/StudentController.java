package com.argusoft.training.section4.controller;

import java.util.ArrayList;
import java.util.List;
import com.argusoft.training.section4.entity.Student;
import jakarta.annotation.PostConstruct;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api")
public class StudentController {

    private List<Student> list;

    @PostConstruct
    public void loadData(){
        list = new ArrayList<>();
        list.add(new Student("Sahil", "Khan"));
        list.add(new Student("Sahil2", "Khan"));
        list.add(new Student("Sahil3", "Khan"));
        list.add(new Student("Sahil4", "Khan"));
    }

    @GetMapping("/students/{studentId}")
    public Student getAllStudent(@PathVariable int studentId){

        return list.get(studentId);

    }

}
