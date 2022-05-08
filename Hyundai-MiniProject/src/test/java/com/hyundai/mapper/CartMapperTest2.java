package com.hyundai.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.MycartVO;

import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: CartMapperTest2.java
작성자: 박주영
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartMapperTest2 {
	
	@Autowired
	private CartMapper mapper;
	
	@Test
	public void testInsert() {
		MycartVO vo = new MycartVO();
		vo.setMid("jyp");
		vo.setPid("fabric1");
		vo.setPsize("FR");
		vo.setPcolor("Yellow");
		vo.setPamount(5);
		
		mapper.insert(vo);
		log.info(vo);
	}
	
}
