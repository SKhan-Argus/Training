package com.argusoft.training.section3.repository;

import com.argusoft.training.section3.dao.StudentDAO;
import com.argusoft.training.section3.entity.Student;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
public class StudentDAOImpl implements StudentDAO {

    private EntityManager entityManager;

    @Autowired
    public StudentDAOImpl(EntityManager entityManager){
        this.entityManager = entityManager;
    }
    @Override
    @Transactional
    public void save(Student student) {
        entityManager.persist(student);
    }

    @Override
    public Student findById(int id) {
        return entityManager.find(Student.class, 1);
    }

    @Override
    public void showAllStudent(){
        TypedQuery<Student> query = entityManager.createQuery
                ("FROM Student", Student.class);
        List<Student> students = query.getResultList();
        for(Student i: students){
            System.out.println(i);
        }
    }

    @Override
    @Transactional
    public int update() {
        return entityManager.createQuery
                ("Update Student set lastName='Khan' where firstName='Sahil'").executeUpdate();
    }

    @Override
    @Transactional
    public int delete() {
        return entityManager.createQuery
                ("Delete from Student where firstName='Satya'").executeUpdate();
    }
}
