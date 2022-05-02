package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hyundai.domain.TodoDTO2;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/sample2/*")
@Log4j
public class SampleControllerDate {
	@GetMapping("/ex03-1")
	public String ex03_1(TodoDTO2 todo2) {
		log.info("ex03-1 todo:" + todo2);
		return "ex03-1";		
	}//end ex04	
}//end class
