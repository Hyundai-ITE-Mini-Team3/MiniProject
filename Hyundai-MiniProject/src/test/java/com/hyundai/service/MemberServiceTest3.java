package com.hyundai.service;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.MemberVO;

import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: MemberServiceTest3.java
작성자: 박주영
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j

public class MemberServiceTest3 {
	@Autowired
	private MemberService service;
	
	@Test
	public void testRead() {
		MemberVO member = service.get("aaa");
		
		log.info(member);
	}

}
