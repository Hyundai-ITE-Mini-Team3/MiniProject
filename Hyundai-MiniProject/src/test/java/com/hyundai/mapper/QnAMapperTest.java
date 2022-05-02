//작성자: 진영서
//기능: QNA테스트 

package com.hyundai.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.QnAVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j

public class QnAMapperTest {
	@Autowired
	private QnAMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(qna->log.info(qna));
	}
	
	@Test
	public void testGetList2() {
		for( QnAVO qna: mapper.getList()) {
			log.info(qna);
		}
	}
}
