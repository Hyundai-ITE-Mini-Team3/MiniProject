package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.QnAVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: QnAMapperTest8.java
작성자: 진영서
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class QnAMapperTest8 {
	
	@Autowired
	private QnAMapper mapper;
	
	@Test
	public void testSearch() {
		Criteria cri = new Criteria();
		cri.setKeyword("게시글"); ;
		cri.setType("") ;
		List<QnAVO> list = mapper.getListWithPaging(cri);
		list.forEach(qna -> log.info(qna.getQid()));		
	}//end testP	
	
	@Test
	public void testSearch2() {
		Criteria cri = new Criteria();
		cri.setKeyword("게시글"); ;
		cri.setType("T") ;
		List<QnAVO> list = mapper.getListWithPaging(cri);
		list.forEach(qna -> log.info(qna.getQid()));		
	}//end testP	
	
	@Test
	public void testSearch3() {
		Criteria cri = new Criteria();
		cri.setKeyword("게시글"); ;
		cri.setType("TC") ;
		List<QnAVO> list = mapper.getListWithPaging(cri);
		list.forEach(qna -> log.info(qna.getQid()));		
	}//end testP	
	
	@Test
	public void testSearch4() {
		Criteria cri = new Criteria();
		cri.setKeyword("게시글");
		cri.setType("TCW") ;
		List<QnAVO> list = mapper.getListWithPaging(cri);
		list.forEach(qna -> log.info(qna.getQid()));		
	}//end testP	
	
}//end class
