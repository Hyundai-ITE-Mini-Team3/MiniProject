package com.hyundai.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.MemberVO;
import com.hyundai.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;
	
	@Override
	public void register(MemberVO member) {
		log.info("register: " + member);
		mapper.insert(member);
	}

	@Override
	public MemberVO get(String mid) {
		MemberVO member = mapper.read(mid);
		log.info("get: " + member);
		
		return member;
	}

	@Override
	public MemberVO login(MemberVO vo) {
		MemberVO member = mapper.login(vo);
		log.info("login: " + member);
		
		return member;
	}

	@Override
	public int checkid(String mid) {
		int cnt = mapper.checkid(mid);
		return cnt;
	}

}
