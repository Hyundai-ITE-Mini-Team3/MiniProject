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
파일명: ProductMapperTest3.java
작성자: 신동근
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductMapperTest3 {
	@Autowired
	private ProductMapper mapper;
	
	@Test
	public void testGetList() {
		String clarge = "lifestyle";
		Criteria cri = new Criteria();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("clarge", clarge);
		map.put("cri", cri);
		for(ProductVO product:mapper.getListClargePaging(map)) {
			log.info(product);
		}
		
	}
}
