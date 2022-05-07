package com.hyundai.mapper;

import com.hyundai.domain.MemberVO;

/*************************************************************
파일명: MemberMapper.java
기능: 회원 추가, 조회, 로그인, 아이디 중복확인을 수행하는 Mapper 인터페이스
작성자: 박주영

[코멘트: X]
*************************************************************/
public interface MemberMapper {
	
	// 회원 가입 후 회원 추가 (프로시저 이용)
	public void insert(MemberVO member);
	
	// 회원 조회 (SELECT문 이용)
	public MemberVO read(String mid);
	
	// 로그인을 위해 아이디, 패스워드가 일치하는 행 조회 (SELECT문 이용)
	public MemberVO login(MemberVO vo);
	
	// 아이디 중복체크를 위해 아이디가 존재하는지 여부 조회 (SELECT문 이용)
	public int checkid(String mid);
}