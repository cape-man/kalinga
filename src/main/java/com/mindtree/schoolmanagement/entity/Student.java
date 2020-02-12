package com.mindtree.schoolmanagement.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int studentId;
	private String studentName;
	private String dateOfBirth;
	private int age;
	
	@ManyToOne
	private ClassSchool classSchool;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(int studentId, String studentName, String dateOfBirth, int age, ClassSchool classSchool) {
		super();
		this.studentId = studentId;
		this.studentName = studentName;
		this.dateOfBirth = dateOfBirth;
		this.age = age;
		this.classSchool = classSchool;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public ClassSchool getClassSchool() {
		return classSchool;
	}
	public void setClassSchool(ClassSchool classSchool) {
		this.classSchool = classSchool;
	}
	
	
	
	

}
