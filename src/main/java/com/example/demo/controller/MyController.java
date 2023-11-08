package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Student;
import com.example.demo.repo.StudentRepo;
@Controller
public class MyController {
    @Autowired
    private StudentRepo studentRepository;
    
    // Mapping to display a form for creating a new student
    @GetMapping("/create")
    public String showCreateForm(Model model) {
        model.addAttribute("student", new Student());
        return "create.jsp";
    }

    // Mapping to process the form submission for creating a new student
    @PostMapping("/create")
    public String createStudent(@ModelAttribute Student student) {
        studentRepository.save(student);
        return "redirect:/list";
    }
    
    // Mapping to display a list of students
    @GetMapping("/list")
    public String listStudents(Model model) {
        List<Student> students = studentRepository.findAll();
        model.addAttribute("students", students);
        return "list";
    }
    
    // Mapping to display a form for updating a student
	/*
	 * @GetMapping("/edit/{id}") public String showEditForm(@PathVariable Long id,
	 * Model model) { Student student = studentRepository.findById(id).orElse(null);
	 * model.addAttribute("student", student); return "edit"; }
	 */
    
    // Mapping to process the form submission for updating a student
    @PostMapping("/edit")
    public String updateStudent(@ModelAttribute Student student) {
        studentRepository.save(student);
        return "redirect:/list";
    }
    
	/*
	 * // Mapping to delete a student
	 * 
	 * @GetMapping("/delete/{id}") public String deleteStudent(@PathVariable Long
	 * id) { studentRepository.deleteById(id); return "redirect:/list"; }
	 */
}

	


