package com.hyundai.service;

import java.util.List;

import com.hyundai.domain.ReplyVO;
/*************************************************************
파일명: ReplyService.java
기능: 댓글 추가, 조회, 수정, 삭제, 게시물의 모든 댓글 조회를 수행하는 Service 인터페이스
작성자: 진영서

[코멘트: X]
*************************************************************/
public interface ReplyService {
	// 댓글 추가
	public int register(ReplyVO vo);
	
	// 댓글 조회
	public ReplyVO get(Long rid);
	
	// 댓글 수정
	public int modify(ReplyVO vo);
	
	// 댓글 삭제
	public int remove(Long rid);
	
	//해당 게시물 번호(qid)의 모든 댓글 조회
	public List<ReplyVO> getList(Long qid);

}
