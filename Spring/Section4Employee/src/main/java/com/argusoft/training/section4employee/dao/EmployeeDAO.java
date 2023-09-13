package com.argusoft.training.section4employee.dao;

import com.argusoft.training.section4employee.entity.Employee;

import java.util.List;

public interface EmployeeDAO {

    Employee findById(int id);

    List<Employee> findAll();

    void deleteById(int id);

    Employee save(Employee employee);

}
