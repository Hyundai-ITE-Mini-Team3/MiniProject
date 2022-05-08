package com.hyundai.mapper;

import java.util.HashMap;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.ProductVO;

import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: ProductMapperTest2.java
작성자: 신동근
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductMapperTest2 {
	@Autowired
	private ProductMapper mapper;
	
	@Test
	public void testGetList() {
		String cmdedium = "home";
		Criteria cri = new Criteria();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("cmdedium", cmdedium);
		map.put("cri", cri);
		for(ProductVO product:mapper.getListCmdediumPaging(map)) {
			log.info(product);
		}
		
	}
}
