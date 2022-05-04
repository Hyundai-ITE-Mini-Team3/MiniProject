package com.hyundai.mapper;

import java.util.Date;

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
public class MemberMapperTest {
	
	@Autowired
	private MemberMapper mapper;
	
	@Test
	public void testInsert() {
		MemberVO member = new MemberVO();
		member.setMid("aaa");
		member.setMpassword("1234");
		member.setMname("에이");
		member.setMemail("aaa@naver.com");
		member.setMtel("01012345678");
		member.setMbirth(new Date());
		member.setMaddress1("성북구");
		member.setMaddress2("에듀센터");
		
		mapper.insert(member);
		log.info(member);
	}
	
}
