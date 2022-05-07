package com.hyundai.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.MemberVO;
import com.hyundai.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: MemberServiceImpl.java
기능: 회원 추가, 조회, 로그인, 아이디 중복확인을 수행하는 Service 구현 클래스
작성자: 박주영

[코멘트: X]
*************************************************************/
@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	// Mapper 객체 주입
	@Autowired
	private MemberMapper mapper;
	
	// 회원 가입 후 회원 추가 
	@Override
	public void register(MemberVO member) {
		log.info("register: " + member);
		mapper.insert(member);
	}

	// 회원 조회 
	@Override
	public MemberVO get(String mid) {
		MemberVO member = mapper.read(mid);
		log.info("get: " + member);
		
		return member;
	}

	// 로그인을 위해 아이디, 패스워드가 일치하는 행 조회
	@Override
	public MemberVO login(MemberVO vo) {
		MemberVO member = mapper.login(vo);
		log.info("login: " + member);
		
		return member;
	}

	// 아이디 중복체크를 위해 아이디가 존재하는지 여부 조회
	@Override
	public int checkid(String mid) {
		int cnt = mapper.checkid(mid);
		return cnt;
	}

}
