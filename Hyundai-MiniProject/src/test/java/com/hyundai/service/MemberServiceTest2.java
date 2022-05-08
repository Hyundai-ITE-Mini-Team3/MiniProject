package com.hyundai.service;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.MemberVO;

import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: MemberServiceTest2.java
작성자: 박주영
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j

public class MemberServiceTest2 {
	@Autowired
	private MemberService service;
	
	@Test
	public void testResgister() {
		MemberVO member = new MemberVO();
		member.setMid("aaa");
		member.setMpassword("1234");
		member.setMname("에이");
		member.setMemail("aaa@naver.com");
		member.setMtel("01012345678");
		member.setMbirth(new Date());
		member.setMaddress1("성북구");
		member.setMaddress2("에듀센터");
		
		service.register(member);
		log.info(member);
	}

}
