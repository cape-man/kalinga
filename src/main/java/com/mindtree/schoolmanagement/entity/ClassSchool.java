package com.mindtree.schoolmanagement.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class ClassSchool {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int classId;
	private char section;
	private String teacherName;
	private int count;
	@OneToMany(cascade = CascadeType.PERSIST,mappedBy = "classSchool")
	List<Student> listStudent;
	public ClassSchool() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ClassSchool(int classId, char section, String teacherName, int count, List<Student> listStudent) {
		super();
		this.classId = classId;
		this.section = section;
		this.teacherName = teacherName;
		this.count = count;
		this.listStudent = listStudent;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public char getSection() {
		return section;
	}
	public void setSection(char section) {
		this.section = section;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List<Student> getListStudent() {
		return listStudent;
	}
	public void setListStudent(List<Student> listStudent) {
		this.listStudent = listStudent;
	}
	
}
