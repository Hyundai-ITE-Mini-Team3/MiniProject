package com.hyundai.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hyundai.domain.SampleVO;
import com.hyundai.domain.SampleVOList;
import com.hyundai.domain.TodoDTO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/sample/*")
@Log4j
public class SampleController {

	@PostMapping("/exUploadPost")
	public void exUploadPost(ArrayList<MultipartFile> files) {
		
		//java lambda for each 
		files.forEach( file -> {
			log.info("-------------------");
			log.info("name :" + file.getOriginalFilename() );
			log.info("size:" + file.getSize());			
		}
		);
		
		for( MultipartFile file : files) {
			log.info("-------------------");
			log.info("name2 :" + file.getOriginalFilename() );
			log.info("size2:" + file.getSize());				
		}//end for
		
		
	}//end exUP
	
	@GetMapping("/exUpload")
	public void exUpload() {
		log.info("exUpload.................... " );
	}//end exUpload	
	
	
	@GetMapping("/ex07")
	public ResponseEntity<String> ex07(){
		log.info("ex07.......");
		
		// \는 string에 "name" 때문
		String msg = "{ \"name\" : \"홍길동\" }";
		
		HttpHeaders header = new HttpHeaders();
		header.add("content-type", "application/json;charset=UTF-8");
		
		return new ResponseEntity<>(msg, header, HttpStatus.OK);		
	}//end ex07
	
	
	@GetMapping("/ex06")
	public @ResponseBody SampleVO ex06() {
	    log.info("/ex06..........");	
	    SampleVO vo = new SampleVO();
	    vo.setAge(10);
	    vo.setName("홍길동");	
	    return vo;
	  }//end SampleDTO
	
	
	@GetMapping("/ex05")
	public void ex05() {
		log.info("ex05.................... " );
	}//end ex05	
	
	
	@GetMapping("/ex04")
	public String ex04(SampleVO vo,@ModelAttribute("page") int page) {
		log.info("ex04 vo:" + vo);
		log.info("ex04 page" + page);
		return "/sample/ex04";
	}//end ex04
	
	@InitBinder 
	public void initBinder(WebDataBinder binder) { 
	  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
	  binder.registerCustomEditor(java.util.Date.class , 
			  new  CustomDateEditor(dateFormat,false) ); 
	 }//end initBinder
	 
	@GetMapping("/ex03")
	public String ex03(TodoDTO todo) {
		log.info("ex03 todo:" + todo);
		return "ex03";		
	}//end ex03
	
	@GetMapping("/ex02Bean")
	public String ex02Bean(SampleVOList list) {
		
		log.info("ex02 Bean dtos:" + list);
		return "ex02Bean";		
	}//end ex02
	
	@GetMapping("/ex02List")
	public String ex02List(@RequestParam("ids") ArrayList<String> ids){
		log.info("ex02 ids : " + ids);
		
		return "ex02List";		
	}//end ex02
	
	@GetMapping("/ex02")
	public String ex02(@RequestParam("name") String name,@RequestParam("age") int age) 
	{
		log.info("ex02 name : " + name);
		log.info("ex02 age : " + age);
		
		return "ex02";		
	}//end ex02
	
	@GetMapping("ex01")
	public String ex01(SampleVO vo) {
		log.info(""+ vo);
		return "ex01";		
	}
	
	@RequestMapping("")
	public void basic() {
		log.info("Basic....");		
	}//end basic		

	@RequestMapping(value = "/basic",method = {RequestMethod.GET, RequestMethod.POST})
	public void basicGet() {
		log.info("basic get.........");
		
	}//end basicGet
	
	@GetMapping("/basicOnlyGet")
	public void basicGet2() {
		log.info("basic get Only GET 2.........");
	}///end basicGet2
}// end class
