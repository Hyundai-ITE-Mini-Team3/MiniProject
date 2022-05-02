package com.hyundai.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/mypage/*")
@Log4j
public class QnAController {
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public String qna_getlist(Locale locale, Model model) {
		logger.info("=============qna page=============");
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "/qna/qnalist";
	}
	
	@RequestMapping(value = "/qna_register", method = RequestMethod.GET)
	public String qna_register(Locale locale, Model model) {
		logger.info("============QnA register page=============");
	
		return "/qna/register";
	}
	@RequestMapping(value = "/me", method = RequestMethod.GET)
	public String mypage(Locale locale, Model model) {
		logger.info("=============mypage=============");
	
		return "/mypage/mypage";
	}
}
