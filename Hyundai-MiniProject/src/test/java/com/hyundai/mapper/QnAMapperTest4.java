package com.hyundai.mapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: QnAMapperTest4.java
작성자: 진영서
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class QnAMapperTest4 {
	@Autowired
	private QnAMapper mapper;
	
	@Test
	public void testDelete() {
		log.info("Delete count: "+mapper.delete(3L));
	}
}
