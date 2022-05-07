package com.hyundai.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*************************************************************
파일명: HomeController.java
기능: 메인 페이지 이동
작성자: 박주영

[코멘트: X]
*************************************************************/
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// main.jsp로 이동
	@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
	public String home(HttpServletRequest request, Locale locale, Model model) {
		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "main";
	}
	
}
