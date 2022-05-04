package com.hyundai.mapper;

import com.hyundai.domain.MemberVO;

public interface MemberMapper {
	
	public void insert(MemberVO member);
	
	public MemberVO read(String mid);
	
	public MemberVO login(MemberVO vo);
	
	public int checkid(String mid);
}