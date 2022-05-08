package com.hyundai.service;

import java.util.List;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.QnAVO;
/*************************************************************
파일명: QnAService.java
기능: QnA 게시글 추가, 조회, 수정, 삭제, 게시물 목록 조회(페이징O)를 수행하는 Service 인터페이스
작성자: 진영서

[코멘트: X]
*************************************************************/
public interface QnAService {
	// QnA 게시판 글 총 개수 불러오기
	public int getTotal(Criteria cri);

	// QnA 게시판 글 작성
	public void register(QnAVO qna);
	
	// QnA 게시판 글 조회
	public QnAVO get(Long qid);
	
	// QnA 게시판 글 수정
	public boolean modify(QnAVO qna);
	
	// QnA 게시판 글 삭제
	public boolean remove(Long qid);
	
	// 페이징 적용하지 않은 QnA 게시판 글 목록 조회
	//public List<QnAVO> getList();		
	
	// 페이징 적용된 QnA 게시판 글 목록 조회
	public List<QnAVO> getList(Criteria cri);
	
	
}
