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

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTest4 {
	
	@Setter(onMethod_ = {@Autowired})
	private ReplyMapper mapper;	
	
	@Test
	public void testDelete() {
		//해당 데이터가 tbl_reply에 있는지 확인
		Long targetRno = 7L;		
		mapper.delete(targetRno);			
	}//end testCreate		
}//end class
