package com.hyundai.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.OrderitemVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderServiceTest2 {
	@Autowired
	private OrderService service;
	
	@Test
	public void testInsertItem() {
		OrderitemVO vo = new OrderitemVO();
		vo.setOid("99");
		vo.setPid("fabric1");
		vo.setCcolorcode(" ");
		vo.setSsize("FR");
		vo.setOamount(1);
		
		service.insertItem(vo);
		log.info(vo);
	}
}
