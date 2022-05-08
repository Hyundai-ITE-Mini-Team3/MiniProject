package com.hyundai.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyundai.service.ProductService;
import com.hyundai.domain.ProductVO;
import com.hyundai.domain.ColorVO;
import com.hyundai.domain.Criteria;
import com.hyundai.domain.PageDTD;

import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: ProductController.java
기능: 상품 리스트, 상세정보, 상품 컬러코드 조회
작성자: 신동근

[코멘트: 상품 리스트 조회시 카테고리별로 조회할 수 있도록 구현(@PathVariable을 통해 url의 쿼리스트링으로 값을 보냄), 
		상품 상세정보 조회시 url의 쿼리스트링(parameter: pid, ccolorcode)를 통해서 상품 상세정보 가져올 수 있도록 구현]
*************************************************************/

@Controller
@RequestMapping("/product/*")	// RequestMapping을 통해  url 서버도메인/product로 시작
@Log4j
public class ProductController {

	// ProductService 객체 주입
	@Autowired
	private ProductService service;
	
	// 대분류 상품목록 불러오기 컨트롤러 메서드 (페이징 적용)
	// RequestMapping을 통해  url 서버도메인/product/{clarge}로 시작 -> ex. localhost:8090/product/lifestyle
	@RequestMapping(value = "/{clarge}", method = { RequestMethod.GET, RequestMethod.POST })
	public String getListClargePaging(@PathVariable("clarge") String clarge, Model model, Criteria cri) {

		List<ProductVO> productList = service.getListClargePaging(cri, clarge);	// ProductService의 getListClargePaging() 호출한뒤 리턴값을 ProductList 변수에 저장
		List<ColorVO> colorList = service.getColorList();	// ProductService의 getColorList() 호출한뒤 리턴값을 colorList 변수에 저장
		List<ColorVO> colorGroupByPid = service.getColorGroupByPID();	// ProductService의 getColorGroupByPID() 호출한뒤 리턴값을 colorGroupByPid 변수에 저장
	
		log.info("대분류 상품 페이지 접속하기(페이징 적용)");
		model.addAttribute("result", productList);	// Model에 ProductVO 리스트 담아 result에 전송
		model.addAttribute("colorList", colorList);	// Model에 ColorVO 리스트 담아 colorList에 전송
		model.addAttribute("colorGroupByPID", colorGroupByPid);	// Model에 ColorVO 리스트 담아 colorGroupByPID에 전송
		int total = service.getClargeCount(clarge);	// ProductService의 getClargeCount() 호출한뒤 리턴값을 total 변수에 저장
		model.addAttribute("pageMaker", new PageDTD(cri, total));	// Model에 PageDTD 객체변수를 담아 pageMaker에 전송
		return "product/list";	// list.jsp로 이동
	}// end

	// 중분류 상품목록 불러오기 컨트롤러 메서드 (페이징 적용)
	// RequestMapping을 통해  url 서버도메인/product/{clarge}/{cmdedium}로 시작 -> ex. localhost:8090/product/lifestyle/home
	@RequestMapping(value = "/{clarge}/{cmdedium}", method = { RequestMethod.GET, RequestMethod.POST })
	public String cmdediumGetList(@PathVariable("cmdedium") String cmdedium, Model model, Criteria cri) {

		List<ProductVO> productList = service.getListCmdediumPaging(cri, cmdedium);	// ProductService의 getListCmdediumPaging() 호출한뒤 리턴값을 ProductList 변수에 저장
		List<ColorVO> colorList = service.getColorList();	// ProductService의 getColorList() 호출한뒤 리턴값을 colorList 변수에 저장
		List<ColorVO> colorGroupByPid = service.getColorGroupByPID();	// ProductService의 getColorGroupByPID() 호출한뒤 리턴값을 colorGroupByPid 변수에 저장

		log.info("중분류 상품 페이지 접속하기(페이징 적용)");
		model.addAttribute("result", productList);	// Model에 ProductVO 리스트 담아 result에 전송
		model.addAttribute("colorList", colorList);	// Model에 ColorVO 리스트 담아 colorList에 전송
		model.addAttribute("colorGroupByPID", colorGroupByPid);	// Model에 ColorVO 리스트 담아 colorGroupByPID에 전송
		int total = service.getCmdediumCount(cmdedium);	// ProductService의 getCmdediumCount() 호출한뒤 리턴값을 total 변수에 저장
		model.addAttribute("pageMaker", new PageDTD(cri, total));	// Model에 PageDTD 객체변수를 담아 pageMaker에 전송
		return "product/list";	// list.jsp로 이동
	}// end
	
	// 소분류 상품목록 불러오기 컨트롤러 메서드 (페이징 적용)
	// RequestMapping을 통해  url 서버도메인/product/{clarge}/{cmdedium}/{csmall}로 시작 -> ex. localhost:8090/product/lifestyle/home/fabric
	@RequestMapping(value = "/{clarge}/{cmdedium}/{csmall}", method = { RequestMethod.GET, RequestMethod.POST })
	public String csmallGetList(@PathVariable("csmall") String csmall, Model model, Criteria cri) {
		
		List<ProductVO> productList = service.getListCsmallPaging(cri, csmall);	// ProductService의 getListCsmallPaging() 호출한뒤 리턴값을 ProductList 변수에 저장
		List<ColorVO> colorList = service.getColorList();	// ProductService의 getColorList() 호출한뒤 리턴값을 colorList 변수에 저장
		List<ColorVO> colorGroupByPid = service.getColorGroupByPID();	// ProductService의 getColorGroupByPID() 호출한뒤 리턴값을 colorGroupByPid 변수에 저장
		
		log.info("소분류 상품 페이지 접속하기(페이징 적용)");
		model.addAttribute("result", productList);	// Model에 ProductVO 리스트 담아 result에 전송
		model.addAttribute("colorList", colorList);	// Model에 ColorVO 리스트 담아 colorList에 전송
		model.addAttribute("colorGroupByPID", colorGroupByPid);	// Model에 ColorVO 리스트 담아 colorGroupByPID에 전송
		int total = service.getCsmallCount(csmall);	// ProductService의 getCsmallCount() 호출한뒤 리턴값을 total 변수에 저장
		model.addAttribute("pageMaker", new PageDTD(cri, total));	// Model에 PageDTD 객체변수를 담아 pageMaker에 전송
		return "product/list";	// list.jsp로 이동
	}// end 
	
	// 상품 상세정보 불러오기 컨트롤러 메서드 
	// RequestMapping을 통해  url 서버도메인/product/{csmall}/detail로 시작
	// querystring으로 url에 parameter 사용 (pid, ccolorcode)
	// ex. localhost:8090/product/fabric/detail?pid={pid값}&ccolorcode={ccolorcode값}
	@RequestMapping(value = "/{csmall}/detail", method = { RequestMethod.GET, RequestMethod.POST })
	public String productGetDetails(@PathVariable("csmall") String csmall, Model model, @Param("pid") String pid, @Param("ccolorcode") String ccolorcode) {
		
		ProductVO product = service.get(pid);	// ProductService의 get() 호출한뒤 리턴값을 product 변수에 저장
		List<ColorVO> colorCode = service.getColorDetail(pid, ccolorcode);	// ProductService의 getColorDetail() 호출한뒤 리턴값을 colorCode 변수에 저장
		List<ColorVO> colorList = service.getColorPid(pid);	// ProductService의 getColorPid() 호출한뒤 리턴값을 colorList 변수에 저장
		
		log.info("상품 상세정보 페이지 접속하기");
		model.addAttribute("product", product);	// Model에 ProductVO 객체에 담아 product에 전송
		model.addAttribute("colorCode", colorCode);	// Model에 ColorVO 리스트 담아 colorCode에 전송
		model.addAttribute("colorList", colorList);	// Model에 ColorVO 리스트 담아 colorList에 전송
		return "product/details";	// details.jsp로 이동
	}// end
	

}// end class
