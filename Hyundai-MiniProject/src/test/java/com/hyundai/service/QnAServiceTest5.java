package com.hyundai.service;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.QnAVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class QnAServiceTest5 {
	@Autowired
	private QnAService service;
	
	@Test
	public void testDelete() {
		log.info("[Remove Result]"+service.remove(11L));
		
	}
	@Test
	public void testUpdate() {
		QnAVO qna = service.get(5L);
		if(qna == null) {
			return;
		}
		qna.setQtitle("제목 수정");
		log.info("[Update]"+service.modify(qna));
	}
}