package com.hyundai.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductServiceTest4 {
	@Autowired
	private ProductService service;
	
	@Test
	public void getCmdediumCount() {
		String cmdedium = "home";
		int num = service.getCmdediumCount(cmdedium);
		
		log.info(num);
	}
}
