package com.hyundai.mapper;

import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.hyundai.domain.ReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: ReplyMapperTest2.java
작성자: 진영서
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTest2 {
	
	@Setter(onMethod_ = {@Autowired})
	private ReplyMapper mapper;
	
	@Test
	public void testCreate() {
		IntStream.range(36, 40).forEach(	i ->{
			ReplyVO vo = new ReplyVO();
			//게시물 번호
			vo.setQid(i);
			vo.setRcontent("댓글테스트" + i);
			vo.setMid("ys");
			mapper.insert(vo);			
		} );//end IntS...		
		
	}//end testCreate
	
	
	@Test
	public void testMapper() {
		log.info(mapper);
	}//end testMap...

}//end class
