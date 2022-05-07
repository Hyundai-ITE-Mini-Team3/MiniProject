package com.hyundai.service;

import java.util.ArrayList;

import com.hyundai.domain.MycartVO;

/*************************************************************
파일명: CartService.java
기능: 장바구니 조회, 추가, 수량 수정, 삭제하는 Service 인터페이스
작성자: 박주영

[코멘트: X]
*************************************************************/
public interface CartService {

	// 장바구니 리스트 불러오기 
	public ArrayList<MycartVO> getList(String mid);
	
	// 장바구니 상품 추가
	public void insert(MycartVO vo);
	
	// 장바구니 상품 수정
	public int update(MycartVO vo);

	// 장바구니 상품 삭제
	public int delete(MycartVO vo);
	
}
