package com.hyundai.service;

import com.hyundai.domain.MemberVO;

public interface MemberService {
	
	public void register(MemberVO member);
	
	public MemberVO get(String mid);
	
	public MemberVO login(MemberVO vo);
	
	public int checkid(String mid);
}
