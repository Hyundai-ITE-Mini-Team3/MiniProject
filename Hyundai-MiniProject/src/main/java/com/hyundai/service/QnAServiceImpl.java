package com.hyundai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.QnAVO;
import com.hyundai.mapper.QnAMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class QnAServiceImpl implements QnAService {

	@Autowired
	private QnAMapper mapper;
	
	@Override
	public void register(QnAVO qna) {
		log.info("[register]"+qna);
		mapper.insert(qna);

	}

	@Override
	public QnAVO get(Long qid) {
		log.info("[get]"+qid);
		return mapper.read(qid);
	}

	@Override
	public boolean modify(QnAVO qna) {
		log.info("[modify]"+qna);
		return mapper.update(qna)==1;
	}

	@Override
	public boolean remove(Long qid) {
		log.info("[remove]"+qid);
		return mapper.delete(qid)==1;
	}

	@Override
	public List<QnAVO> getList() {
		log.info("[get list]");
		return mapper.getList();
	}

}
