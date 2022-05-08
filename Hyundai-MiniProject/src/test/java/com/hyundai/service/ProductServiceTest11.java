package com.hyundai.service;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.ColorVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductServiceTest11 {
	@Autowired
	private ProductService service;
	
	@Test
	public void getColorList() {
		String pid = "fabric1";
		List<ColorVO> list = service.getColorPid(pid);
		log.info(list);
		
	}
}
