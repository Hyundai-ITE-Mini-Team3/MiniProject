package com.hyundai.mapper;

import java.util.List;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.OrderVO;
import com.hyundai.domain.OrderitemVO;
import com.hyundai.domain.OrderlistVO;
import com.hyundai.domain.QnAVO;
/*************************************************************
파일명: QnAMapper.java
기능: QnA 글 조회,작성, 수정, 삭제하는 Mapper 인터페이스
작성자: 진영서

[코멘트: X]
*************************************************************/
public interface QnAMapper {
	// QnA 글 데이터 수 불러오기 (SELECT문 이용)
	public int getTotalCount(Criteria cri);
	
	// QnA 글 리스트 조회 - 페이징 적용O, 검색처리 적용O (SELECT문 이용)
	public List<QnAVO> getListWithPaging(Criteria cri);
	
	// QnA 글 리스트 조회 - 페이징 적용X (SELECT문 이용)
	public List<QnAVO> getList();
	
	// QnA 글 작성 (sp_qna_insert 프로시저 이용)
	public void insert(QnAVO qna);
	
	// QnA 글 조회를 위해 해당 글번호의 QnA 객체 반환 (SELECT문 이용)
	public QnAVO read(long qid);
	
	// QnA 글 삭제 (sp_qna_delete 프로시저 이용)
	public int delete(long qid);
	
	// QnA 글 수정 (sp_qna_update 프로시저 이용)
	public int update(QnAVO qna);
}