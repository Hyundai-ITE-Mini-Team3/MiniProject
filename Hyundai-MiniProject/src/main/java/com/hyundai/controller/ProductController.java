package com.hyundai.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyundai.service.ProductService;
import com.hyundai.domain.ProductVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/product/*")
@Log4j
public class ProductController {

	@Autowired
	private ProductService service;
	
	// 대분류 상품목록 불러오기 메서드
	@RequestMapping(value = "/{clarge}", method = { RequestMethod.GET, RequestMethod.POST })
	public String clargeGetList(@PathVariable("clarge") String clarge, Model model) {

		List<ProductVO> productList = service.clargeGetList(clarge);
		System.out.println(productList);

		log.info("소분류 상품 페이지 접속하기");
		model.addAttribute("result", productList);
		// return "product/" + csmall;
		return "product/list";
	}// end
	
	// 중분류 상품목록 불러오기 메서드
	@RequestMapping(value = "/{clarge}/{cmdedium}", method = { RequestMethod.GET, RequestMethod.POST })
	public String cmdediumGetList(@PathVariable("cmdedium") String cmdedium, Model model) {

		List<ProductVO> productList = service.cmediumGetList(cmdedium);
		System.out.println(productList);

		log.info("소분류 상품 페이지 접속하기");
		model.addAttribute("result", productList);
		// return "product/" + csmall;
		return "product/list";
	}// end

	// 소분류 상품목록 불러오기 메서드
	@RequestMapping(value = "/{clarge}/{cmdedium}/{csmall}", method = { RequestMethod.GET, RequestMethod.POST })
	public String csmallGetList(@PathVariable("csmall") String csmall, Model model) {
		
		List<ProductVO> productList = service.getList(csmall);
		System.out.println(productList);
		
		
		log.info("소분류 상품 페이지 접속하기");
		model.addAttribute("result", productList);
		//return "product/" + csmall;
		return "product/list";
	}// end 
	
	@RequestMapping(value = "/{csmall}/detail", method = { RequestMethod.GET, RequestMethod.POST })
	public String productGetDetails(@PathVariable("csmall") String csmall, Model model, @RequestParam("pid") String pid) {
		
		ProductVO product = service.get(pid);
		System.out.println("-----------테스트-----------------");
		System.out.println(product);
		
		
		//log.info("소분류 상품 페이지 접속하기");
		model.addAttribute("product", product);
		return "product/details";
	}// end
	

}// end class
