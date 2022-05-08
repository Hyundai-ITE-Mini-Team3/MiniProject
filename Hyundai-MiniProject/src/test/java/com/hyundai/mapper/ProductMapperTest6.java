package com.hyundai.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: ProductMapperTest6.java
작성자: 신동근
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductMapperTest6 {
	@Autowired
	private ProductMapper mapper;
	
	@Test
	public void testGetCount() {
		String csmall = "fabric";
		log.info(mapper.getCsmallCount(csmall));
		
	}
}
