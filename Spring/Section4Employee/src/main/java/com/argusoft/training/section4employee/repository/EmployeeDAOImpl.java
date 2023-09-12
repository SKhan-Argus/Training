package com.argusoft.training.section4employee.repository;

import com.argusoft.training.section4employee.dao.EmployeeDAO;
import com.argusoft.training.section4employee.entity.Employee;
import jakarta.persistence.EntityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

    private EntityManager entityManager;

    @Autowired
    public EmployeeDAOImpl(EntityManager entityManager){
        this.entityManager = entityManager;
    }

    public Employee findById(int id){
        return entityManager.find(Employee.class, 1);
    }

}
