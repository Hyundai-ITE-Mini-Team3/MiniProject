package com.hyundai.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.MycartVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartServiceTest4 {
	@Autowired
	private CartService service;
	
	@Test
	public void testUpdate() {
		MycartVO vo = new MycartVO();
		vo.setMid("jyp");
		vo.setPid("fabric1");
		vo.setPamount(3);
		
		int rslt = service.update(vo);
		log.info("rslt: " + rslt);
	}
	
}
