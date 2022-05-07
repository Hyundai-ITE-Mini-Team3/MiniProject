package com.hyundai.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.MycartVO;
import com.hyundai.mapper.CartMapper;

import lombok.AllArgsConstructor;

/*************************************************************
파일명: CartServiceImpl.java
기능: 장바구니 조회, 추가, 수량 수정, 삭제하는 Service 구현 클래스
작성자: 박주영

[코멘트: X]
*************************************************************/
@Service
@AllArgsConstructor
public class CartServiceImpl implements CartService {

	// Mapper 객체 주입
	@Autowired
	private CartMapper mapper;
	
	// 장바구니 리스트 불러오기
	@Override
	public ArrayList<MycartVO> getList(String mid) {
		ArrayList<MycartVO> list = mapper.getList(mid);
		
		return list;
	}

	// 장바구니 상품 추가
	@Override
	public void insert(MycartVO vo) {
		mapper.insert(vo);
	}

	// 장바구니 상품 수정
	@Override
	public int update(MycartVO vo) {
		int rslt = mapper.update(vo);
		return rslt;
	}

	// 장바구니 상품 삭제
	@Override
	public int delete(MycartVO vo) {
		int rslt = mapper.delete(vo);
		return rslt;
	}
	

}
