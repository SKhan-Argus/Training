package com.argusoft.training.backendtask1.controller;


import com.argusoft.training.backendtask1.model.Todo;
import com.argusoft.training.backendtask1.repository.TodoRepository;
import com.argusoft.training.backendtask1.service.TodoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/todos")
public class TodoController {


    private final TodoService todoService;

    @Autowired
    public TodoController(TodoService todoService){
        this.todoService = todoService;
    }

    @GetMapping("/{userId}")
    public ResponseEntity<List<Todo>> getTodosByUserId(@PathVariable Long userId) {
        List<Todo> todos = todoService.getTodosByUserId(userId);
        return ResponseEntity.ok(todos);
    }

    // Endpoint to add a new todo for a specific user
    @PostMapping("/{userId}")
    public ResponseEntity<Todo> addTodoForUser(@PathVariable Long userId, @RequestBody Todo todo) {
        Todo savedTodo = todoService.addTodoForUser(userId, todo);
        return new ResponseEntity<>(savedTodo, HttpStatus.CREATED);
    }


}
