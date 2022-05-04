package com.hyundai.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.hyundai.service.ProductService;
import com.hyundai.domain.ProductVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/product/*")
@Log4j
public class ProductController {

	@Autowired
	private ProductService service;

	@RequestMapping(value = "/fabric", method = { RequestMethod.GET, RequestMethod.POST })
	public String fabricGetList(Model model) {
		
		List<ProductVO> productList = service.getList();
		System.out.println(productList);
		
		
		log.info("fabric 상품 페이지 접속하기");
		model.addAttribute("result", productList);
		return "product/fabric";
	}// end 
	
	// 테스트
	@RequestMapping(value = "/fabric2", method = { RequestMethod.GET, RequestMethod.POST })
	public String test() {
		
		
		log.info("fabric2 상품 페이지 접속하기");
		return "product/fabric2";
	}// end 

}// end class
