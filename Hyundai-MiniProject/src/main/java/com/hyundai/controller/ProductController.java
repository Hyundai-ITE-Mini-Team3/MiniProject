package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/product/*")
@Log4j
public class ProductController {

	

	@RequestMapping(value = "/fabric", method = { RequestMethod.GET, RequestMethod.POST })
	public String basicGet() {
		log.info("fabric 상품 페이지 접속하기");
		return "product/fabric";
	}// end 

}// end class
