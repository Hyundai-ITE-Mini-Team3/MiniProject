package com.hyundai.service;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.QnAVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class QnAServiceTest6 {
	@Autowired
	private QnAService service;
	
	@Test
	public void testGetList() {
		service.getList(new Criteria(2,3)).forEach(qna->log.info(qna));
	}
	
	@Test
	public void testGetList2() {
		for(QnAVO qna:service.getList(new Criteria(2,3))) {
			log.info(qna);
		}
	}
}
