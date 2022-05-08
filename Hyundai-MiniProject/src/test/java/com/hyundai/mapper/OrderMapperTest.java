package com.hyundai.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.OrderitemVO;

import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: OrderMapperTest.java
작성자: 박주영
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderMapperTest {
	
	@Autowired
	private OrderMapper mapper;
	
	@Test
	public void testInsertItem() {
		OrderitemVO vo = new OrderitemVO();
		vo.setOid("99");
		vo.setPid("fabric1");
		vo.setCcolorcode(" ");
		vo.setSsize("FR");
		vo.setOamount(1);
		
		mapper.insertItem(vo);
		log.info(vo);
	}
	
}
