package com.hyundai.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.OrderlistVO;

import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: OrderMapperTest2.java
작성자: 박주영
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderMapperTest2 {
	
	@Autowired
	private OrderMapper mapper;
	
	@Test
	public void testInsertList() {
		OrderlistVO vo = new OrderlistVO();
		vo.setOid("99");
		vo.setMid("jyp");
		vo.setOaddress1("성북구");
		vo.setOaddress2("202");
		vo.setOreceiver("홍길동");
		vo.setOtel("01099999999");
		
		mapper.insertList(vo);
		log.info(vo);
	}
	
}
