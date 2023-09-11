package com.argusoft.training.section3;

import com.argusoft.training.section3.dao.StudentDAO;
import com.argusoft.training.section3.entity.Student;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class Section3Application {

	public static void main(String[] args) {
		SpringApplication.run(Section3Application.class, args);
	}

	@Bean
	public CommandLineRunner commandLineRunner(StudentDAO studentDAO){
		return runner -> {
//			addStudent(studentDAO);
//			System.out.println(studentDAO.findById(1));
//			System.out.println(studentDAO.update());
//			System.out.println(studentDAO.delete());
			studentDAO.showAllStudent();
		};
	}

	public void addStudent(StudentDAO studentDAO){

//		Student student = new Student();
//		student.setFirstName("Sahil");
//		student.setLastName("Khan");
//		student.setEmail("skhan@gmail.com");
//		studentDAO.save(student);
//		System.out.println("Student added: " + student.getId());



	}

}
