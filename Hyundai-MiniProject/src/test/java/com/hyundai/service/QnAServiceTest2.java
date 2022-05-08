package com.hyundai.service;
import static org.junit.Assert.assertNotNull;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.QnAVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: QnAServiceTest2.java
작성자: 진영서
*************************************************************/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j

public class QnAServiceTest2 {
	@Autowired
	private QnAService service;
	
	@Test
	public void testRegister() {
		QnAVO qna = new QnAVO();
		qna.setQtitle("새로 작성 테스트");
		qna.setQcontent("test~");
		qna.setMid("newbie");
		service.register(qna);
		log.info("생성된 게시물 생성");
	}

}
