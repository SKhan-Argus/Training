package com.argusoft.training.backendtask1.repository;

import com.argusoft.training.backendtask1.model.Todo;
import lombok.extern.java.Log;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TodoRepository extends JpaRepository<Todo, Long> {
    List<Todo> findByUserId(Long userId);
}
