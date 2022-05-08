package com.hyundai.service;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.ProductVO;

import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: ProductServiceTest7.java
작성자: 신동근
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductServiceTest7 {
	@Autowired
	private ProductService service;
	
	@Test
	public void getListClargePaging() {
		String cmdedium = "home";
		Criteria cri = new Criteria();
		List<ProductVO> list = service.getListCmdediumPaging(cri, cmdedium);
		log.info(list);
		
	}
}
