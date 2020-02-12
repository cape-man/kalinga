package com.mindtree.schoolmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.schoolmanagement.entity.ClassSchool;

@Repository
public interface SchoolRepository extends JpaRepository<ClassSchool, Integer> {

}
