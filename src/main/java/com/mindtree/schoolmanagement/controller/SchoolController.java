package com.mindtree.schoolmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mindtree.schoolmanagement.entity.ClassSchool;
import com.mindtree.schoolmanagement.entity.Student;
import com.mindtree.schoolmanagement.exception.SchoolException;
import com.mindtree.schoolmanagement.exception.service.ServiceException;
import com.mindtree.schoolmanagement.service.SchoolManagementService;


@Controller
public class SchoolController {
	
	@Autowired
	SchoolManagementService schoolService;
	
	
	@RequestMapping("/")
	public String getHomePage()
	{
		return "home";
	}
	
	@GetMapping("/addClass")
	public String getClassReg()
	{
		return "classReg";
	}
	@PostMapping("/classToDb")
	public String addClassToDb(ClassSchool classSchool)
	{
		schoolService.addClassToDb(classSchool);
		return "home";
		
	}
	
	@GetMapping("/addStudent")
	public String getStudentReg(ModelMap model)
	{
		
		List<ClassSchool> sectionList=schoolService.getAllSection();
		model.put("sectionList",sectionList);
		return "studentReg";
	}
	
	@PostMapping("/studentToDb")
	public String addStudentToDb(Student student,@RequestParam int studentSection,ModelMap model) 
	{
		
		try {
			schoolService.addStudentToDb(student,studentSection);
		} catch (ServiceException e) {
			model.put("e",e);
			return "studentReg";
		}
		return "home";
	}
	
	
	@GetMapping("/displayStudent")
	public String getDisplayPage(ModelMap model)
	{
		List<ClassSchool> sectionList=schoolService.getAllSection();
		model.put("sectionList",sectionList);
		return "displayPage";
	}
	
	@PostMapping("/getAllStudent")
	public String getAllStudent(@RequestParam int studentSection,ModelMap model)
	{
		List<Student> listStudent=schoolService.getAllStudent(studentSection);
		List<ClassSchool> sectionList=schoolService.getAllSection();
		model.put("sectionList",sectionList);
		model.put("listStudent",listStudent);
		model.put("studentSection",studentSection);
		return "displayPage";
		
	}

}
