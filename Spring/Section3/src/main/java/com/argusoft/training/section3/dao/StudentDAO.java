package com.argusoft.training.section3.dao;

import com.argusoft.training.section3.entity.Student;


public interface StudentDAO {

    void save(Student student);

    Student findById(int id);

    void showAllStudent();

    int update();

    int delete();
}
