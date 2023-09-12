package com.argusoft.training.section4.controller;

import java.util.ArrayList;
import java.util.List;
import com.argusoft.training.section4.entity.Student;
import com.argusoft.training.section4.entity.StudentErrorResponse;
import com.argusoft.training.section4.exception.StudentNotFoundException;
import jakarta.annotation.PostConstruct;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


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

        if(studentId >= this.list.size() || studentId < 0){
            throw new StudentNotFoundException("Student is not found - " + studentId);
        }
        return list.get(studentId);

    }


}
