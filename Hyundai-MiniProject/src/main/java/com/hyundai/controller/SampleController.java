package com.hyundai.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyundai.domain.SampleVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/sample/*")
@Log4j
public class SampleController {

	@GetMapping("/ex02List")
	public String ex02List(@RequestParam("ids") ArrayList<String> ids) {
		log.info("ex02 ids : " + ids);
		return "ex02List";
	}// end ex02

	@GetMapping("/ex02")
	public String ex02(@RequestParam("name") String name, @RequestParam("age") int age) {
		log.info("ex02 name : " + name);
		log.info("ex02 age : " + age);

		return "ex02";
	}// end ex02

	@GetMapping("ex01")
	public String ex01(SampleVO vo) {
		log.info("" + vo);
		return "ex01";
	}

	@RequestMapping("")
	public void basic() {
		log.info("Basic....");
	}// end basic

	@RequestMapping(value = "/basic", method = { RequestMethod.GET, RequestMethod.POST })
	public void basicGet() {
		log.info("basic get.........");

	}// end basicGet

	@GetMapping("/basicOnlyGet")
	public void basicGet2() {
		log.info("basic get Only GET 2.........");
	}/// end basicGet2

}// end class
