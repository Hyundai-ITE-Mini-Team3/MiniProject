package com.hyundai.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.OrderlistVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderServiceTest3 {
	@Autowired
	private OrderService service;
	
	@Test
	public void testInsertList() {
		OrderlistVO vo = new OrderlistVO();
		vo.setOid("99");
		vo.setMid("jyp");
		vo.setOaddress1("성북구");
		vo.setOaddress2("202");
		vo.setOreceiver("홍길동");
		vo.setOtel("01099999999");
		
		service.insertList(vo);
		log.info(vo);
	}
	
}
