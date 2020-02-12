package com.mindtree.schoolmanagement.handler;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.mindtree.schoolmanagement.exception.SchoolException;

//@ControllerAdvice
//public class GlobalExceptionHandler {
//	@ExceptionHandler
//public String exceptionHandler(SchoolException c,Model model)
//	
//	{
//		Map<String,Object> error= new HashMap<String,Object>();
//		error.put("timestamp", new Date());
//		error.put("message", c.getMessage());
//		error.put("httpstatus", HttpStatus.BAD_REQUEST.value());
//		model.addAttribute("error", error);
//		return "studentReg";
//		
//		
//		
//	}


