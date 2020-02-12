package com.mindtree.schoolmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.schoolmanagement.entity.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer>{

}
