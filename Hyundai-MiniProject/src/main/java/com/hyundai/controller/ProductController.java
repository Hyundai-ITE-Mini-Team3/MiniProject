package com.hyundai.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyundai.service.ProductService;
import com.hyundai.domain.ProductVO;
import com.hyundai.domain.ColorVO;
import com.hyundai.domain.Criteria;
import com.hyundai.domain.PageDTD;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/product/*")
@Log4j
public class ProductController {

	@Autowired
	private ProductService service;
	
	// 대분류 상품목록 불러오기 컨트롤러 메서드 (페이징 적용)
	@RequestMapping(value = "/{clarge}", method = { RequestMethod.GET, RequestMethod.POST })
	public String getListClargePaging(@PathVariable("clarge") String clarge, Model model, Criteria cri) {

		List<ProductVO> productList = service.getListClargePaging(cri, clarge);
		List<ColorVO> colorList = service.getColorList();
		List<ColorVO> colorGroupByPid = service.getColorGroupByPID();
		//System.out.println(productList);

		log.info("대분류 상품 페이지 접속하기(페이징 적용)");
		model.addAttribute("result", productList);
		model.addAttribute("colorList", colorList);
		model.addAttribute("colorGroupByPID", colorGroupByPid);
		int total = service.getClargeCount(clarge);
		model.addAttribute("pageMaker", new PageDTD(cri, total));
		return "product/list";
	}// end

	// 중분류 상품목록 불러오기 컨트롤러 메서드 (페이징 적용)
	@RequestMapping(value = "/{clarge}/{cmdedium}", method = { RequestMethod.GET, RequestMethod.POST })
	public String cmdediumGetList(@PathVariable("cmdedium") String cmdedium, Model model, Criteria cri) {

		List<ProductVO> productList = service.getListCmdediumPaging(cri, cmdedium);
		List<ColorVO> colorList = service.getColorList();
		List<ColorVO> colorGroupByPid = service.getColorGroupByPID();
		//System.out.println(productList);

		log.info("중분류 상품 페이지 접속하기(페이징 적용)");
		model.addAttribute("result", productList);
		model.addAttribute("colorList", colorList);
		model.addAttribute("colorGroupByPID", colorGroupByPid);
		int total = service.getCmdediumCount(cmdedium);
		model.addAttribute("pageMaker", new PageDTD(cri, total));
		return "product/list";
	}// end
	
	// 소분류 상품목록 불러오기 컨트롤러 메서드 (페이징 적용)
	@RequestMapping(value = "/{clarge}/{cmdedium}/{csmall}", method = { RequestMethod.GET, RequestMethod.POST })
	public String csmallGetList(@PathVariable("csmall") String csmall, Model model, Criteria cri) {
		
		List<ProductVO> productList = service.getListCsmallPaging(cri, csmall);
		List<ColorVO> colorList = service.getColorList();
		List<ColorVO> colorGroupByPid = service.getColorGroupByPID();
		//System.out.println(productList);
		
		//System.out.println("----------------------------------");
		//System.out.println(colorList);
		
		log.info("소분류 상품 페이지 접속하기(페이징 적용)");
		model.addAttribute("result", productList);
		model.addAttribute("colorList", colorList);
		model.addAttribute("colorGroupByPID", colorGroupByPid);
		int total = service.getCsmallCount(csmall);
		model.addAttribute("pageMaker", new PageDTD(cri, total));
		return "product/list";
	}// end 
	
	
	@RequestMapping(value = "/{csmall}/detail", method = { RequestMethod.GET, RequestMethod.POST })
	public String productGetDetails(@PathVariable("csmall") String csmall, Model model, @Param("pid") String pid, @Param("ccolorcode") String ccolorcode) {
		
		ProductVO product = service.get(pid);
		List<ColorVO> colorCode = service.getColorDetail(pid, ccolorcode);
		List<ColorVO> colorList = service.getColorPid(pid);		
		
		log.info("상품 상세정보 페이지 접속하기");
		model.addAttribute("product", product);
		model.addAttribute("colorCode", colorCode);
		model.addAttribute("colorList", colorList);
		return "product/details";
	}// end
	

}// end class
