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
public class ReplyMapperTest5 {	
	@Setter(onMethod_ = {@Autowired})
	private ReplyMapper mapper;	
	
	@Test
	public void testUpdate() {		
		//해당 데이터가 tbl_reply에 있는지 확인
		Long targetRno = 5L;		
		//RNO 10번 데이터 읽고
		ReplyVO vo = mapper.read(targetRno);		
		vo.setRcontent("Update Reply....."); //데이터 변경		
		int count = mapper.update(vo);//변경 행수 저장		
		log.info("Update Count :" + count);		
		
	}//end testCreate		
}//end class
