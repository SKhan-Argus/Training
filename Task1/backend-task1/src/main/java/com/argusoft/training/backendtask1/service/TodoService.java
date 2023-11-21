package com.argusoft.training.backendtask1.service;

import com.argusoft.training.backendtask1.model.Todo;
import com.argusoft.training.backendtask1.model.User;
import com.argusoft.training.backendtask1.repository.TodoRepository;
import com.argusoft.training.backendtask1.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class TodoService {

    private final TodoRepository todoRepository;
    private final UserRepository userRepository;

    @Autowired
    public TodoService(TodoRepository todoRepository, UserRepository userRepository) {
        this.todoRepository = todoRepository;
        this.userRepository = userRepository;
    }
    public List<Todo> getTodosByUserId(Long userId) {
       
        // Implement logic to fetch todos associated with the given userId from the repository
        return todoRepository.findByUserId(userId);
    }

    public Todo addTodoForUser(Long userId, Todo todo) {
        // Retrieve the user by ID from the UserRepository
        User user = userRepository.findById(userId).orElseThrow(() -> new RuntimeException("User not found"));

        // Set the user for the todo
        todo.setUser(user);

        // Save the todo
        return todoRepository.save(todo);
    }

}
