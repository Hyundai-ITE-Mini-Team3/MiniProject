package com.hyundai.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: ProductServiceTest5.java
작성자: 신동근
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductServiceTest5 {
	@Autowired
	private ProductService service;
	
	@Test
	public void getCmdediumCount() {
		String csmall = "fabric";
		int num = service.getCsmallCount(csmall);
		
		log.info(num);
	}
}
