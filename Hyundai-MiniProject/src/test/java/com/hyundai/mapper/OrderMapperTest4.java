package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.OrderVO;

import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: OrderMapperTest4.java
작성자: 박주영
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderMapperTest4 {
	
	@Autowired
	private OrderMapper mapper;
	
	@Test
	public void testGetOrder() {
		
		List<OrderVO> list = mapper.getOrder("jyp");
		
		log.info(list);
	}
	
}
