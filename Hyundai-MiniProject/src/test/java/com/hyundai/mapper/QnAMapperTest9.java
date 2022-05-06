package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.hyundai.domain.QnAVO;
import com.hyundai.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class QnAMapperTest9 {
	
	@Setter(onMethod_ = @Autowired)
	private QnAMapper mapper;
	
	@Test
	public void testTotalCount() {
		Criteria cri = new Criteria();
		cri.setKeyword("게시글"); ;
		cri.setType("") ;
		log.info("Total COUNT: " +mapper.getTotalCount(cri));
	}//end testP		
		
	@Test
	public void testTotalCount2() {
		Criteria cri = new Criteria();
		cri.setKeyword("게시글"); ;
		cri.setType("T") ;
		log.info("Total COUNT: " +mapper.getTotalCount(cri));
	}//end testP		
	
	@Test
	public void testTotalCount3() {
		Criteria cri = new Criteria();
		cri.setKeyword("게시글"); ;
		cri.setType("TC") ;
		log.info("Total COUNT: " +mapper.getTotalCount(cri));
	}//end testP		
	
	@Test
	public void testTotalCount4() {
		Criteria cri = new Criteria();
		cri.setKeyword("게시글"); ;
		cri.setType("TCW") ;
		log.info("Total COUNT: " +mapper.getTotalCount(cri));
	}//end testP		
	
	
	
}//end class
