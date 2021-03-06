package com.hyundai.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: MemberMapperTest4.java
작성자: 박주영
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTest4 {
	
	@Autowired
	private MemberMapper mapper;
	
	@Test
	public void testCheckId() {
		String mid = "jyp";
		log.info(mapper.checkid(mid));
		
		String mid2 = "jyp2";
		log.info(mapper.checkid(mid2));
	}
	
}
