package com.mindtree.schoolmanagement.service;

import java.util.List;

import com.mindtree.schoolmanagement.entity.ClassSchool;
import com.mindtree.schoolmanagement.entity.Student;
import com.mindtree.schoolmanagement.exception.service.ServiceException;

public interface SchoolManagementService {

	void addClassToDb(ClassSchool classSchool);

	List<ClassSchool> getAllSection();

	void addStudentToDb(Student student, int studentSection) throws ServiceException;

	List<Student> getAllStudent(int studentSection);

}
