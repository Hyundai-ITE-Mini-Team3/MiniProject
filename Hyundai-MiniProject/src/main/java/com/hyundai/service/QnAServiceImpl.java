package com.hyundai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.QnAVO;
import com.hyundai.mapper.QnAMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class QnAServiceImpl implements QnAService {

	// Mapper 객체 주입
	@Autowired
	private QnAMapper mapper;
	
	// QnA 게시판 글 작성
	@Override
	public void register(QnAVO qna) {
		log.info("[register]"+qna);
		mapper.insert(qna);

	}

	// QnA 게시판 글 조회
	@Override
	public QnAVO get(Long qid) {
		log.info("[get]"+qid);
		return mapper.read(qid);
	}

	// QnA 게시판 글 수정
	@Override
	public boolean modify(QnAVO qna) {
		log.info("[modify]"+qna);
		return mapper.update(qna)==1;
	}

	// QnA 게시판 글 삭제
	@Override
	public boolean remove(Long qid) {
		log.info("[remove]"+qid);
		return mapper.delete(qid)==1;
	}
	
	// 페이징 적용하지 않은 QnA 게시판 글 목록 조회
//	@Override
//	public List<QnAVO> getList() {
//		log.info("[get list]");
//		return mapper.getList();
//	}
	
	// 페이징 적용된 QnA 게시판 글 목록 조회
	@Override
	public List<QnAVO> getList(Criteria cri){
		log.info("[get List with criteria] "+cri);
		return mapper.getListWithPaging(cri);
	}
	
	// QnA 게시판 글 총 개수 불러오기
	@Override
	public int getTotal(Criteria cri) {
		log.info("[get total count]");
		return mapper.getTotalCount(cri);
	}

}
