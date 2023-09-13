package com.argusoft.training.section4employee.service;

import com.argusoft.training.section4employee.entity.Employee;

import java.util.List;
import java.util.Optional;

public interface EmployeeService {

    Optional<Employee> findById(int employeeId);
    List<Employee> findAll();

    void deleteById(int employeeId);

    Employee save(Employee employee);
}
