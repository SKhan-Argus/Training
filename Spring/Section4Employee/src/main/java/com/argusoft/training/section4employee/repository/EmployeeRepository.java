package com.argusoft.training.section4employee.repository;

import com.argusoft.training.section4employee.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
}
