package com.hyundai.service;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j

public class MemberServiceTest4 {
	@Autowired
	private MemberService service;
	
	@Test
	public void testLogin() {
		MemberVO member = new MemberVO();
		member.setMid("jyp");
		member.setMpassword("1234");
		
		log.info(service.login(member));
	}

}
