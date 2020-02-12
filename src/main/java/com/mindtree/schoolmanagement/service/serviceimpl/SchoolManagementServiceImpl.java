package com.mindtree.schoolmanagement.service.serviceimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.schoolmanagement.entity.ClassSchool;
import com.mindtree.schoolmanagement.entity.Student;
import com.mindtree.schoolmanagement.exception.service.NoMoreStudentAllowedException;
import com.mindtree.schoolmanagement.exception.service.ServiceException;
import com.mindtree.schoolmanagement.repository.SchoolRepository;
import com.mindtree.schoolmanagement.repository.StudentRepository;
import com.mindtree.schoolmanagement.service.SchoolManagementService;
import com.mysql.fabric.xmlrpc.base.Array;
@Service
public class SchoolManagementServiceImpl implements SchoolManagementService{
	
	
	@Autowired
	SchoolRepository schoolRepository;
	
	@Autowired
	StudentRepository studentRepository;

	@Override
	public void addClassToDb(ClassSchool classSchool) {
		
		schoolRepository.save(classSchool);
		
		
	}

	@Override
	public List<ClassSchool> getAllSection() {
		
		
		return schoolRepository.findAll();
			
			
			
		
		
	}

	@Override
	public void addStudentToDb(Student student,int studentSection) throws ServiceException {
		
		ClassSchool classSchool=schoolRepository.getOne(studentSection);
		
		
		if(classSchool.getListStudent().size()>=classSchool.getCount())
			throw new NoMoreStudentAllowedException("Sorry no more student");
		
		student.setClassSchool(schoolRepository.getOne(studentSection));
		studentRepository.save(student);
		
		
	}

	@Override
	public List<Student> getAllStudent(int studentSection) {
		
		ClassSchool classSchool=schoolRepository.getOne(studentSection);
		return classSchool.getListStudent();
	}

}
