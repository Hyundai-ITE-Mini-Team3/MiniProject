package com.hyundai.mapper;

import java.util.List;

import com.hyundai.domain.ReplyVO;
/*************************************************************
파일명: ReplyMapper.java
기능: 댓글 조회,작성, 수정, 삭제하는 Mapper 인터페이스
작성자: 진영서

[코멘트: X]
*************************************************************/
public interface ReplyMapper {
	// 해당 qid의 게시물 댓글 조회 (SELECT문 이용) - ReplyVO 객체 반환
	public List<ReplyVO> getList(Long qid);
	
	// 댓글 작성 (INSERT문 이용)
	public int insert(ReplyVO vo);
	
	// 해당 번호(rid) 댓글 조회 (SELECT문 이용) - ReplyVO 객체 반환
	public ReplyVO read(Long rid);
	
	// 댓글 삭제 (DELETE문 이용)
	public int delete(Long rid);
	
	// 댓글 수정 (UPDATE문 이용)
	public int update(ReplyVO reply);
}
