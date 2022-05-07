package com.hyundai.service;

import com.hyundai.domain.MemberVO;

/*************************************************************
파일명: MemberService.java
기능: 회원 추가, 조회, 로그인, 아이디 중복확인을 수행하는 Service 인터페이스
작성자: 박주영

[코멘트: X]
*************************************************************/
public interface MemberService {
	
	// 회원 가입 후 회원 추가
	public void register(MemberVO member);
	
	// 회원 조회
	public MemberVO get(String mid);
	
	// 로그인을 위해 아이디, 패스워드가 일치하는 행 조회
	public MemberVO login(MemberVO vo);
	
	// 아이디 중복체크를 위해 아이디가 존재하는지 여부 조회 
	public int checkid(String mid);
	
}
