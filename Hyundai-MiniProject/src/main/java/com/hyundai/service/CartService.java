package com.hyundai.service;

import java.util.ArrayList;

import com.hyundai.domain.MycartVO;

public interface CartService {

	public ArrayList<MycartVO> getList(String mid);
	
	public void insert(MycartVO vo);
	
	public int update(MycartVO vo);

	public int delete(MycartVO vo);
}
