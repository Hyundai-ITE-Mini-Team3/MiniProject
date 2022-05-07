package com.hyundai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.OrderVO;
import com.hyundai.domain.OrderitemVO;
import com.hyundai.domain.OrderlistVO;
import com.hyundai.mapper.OrderMapper;

import lombok.AllArgsConstructor;

/*************************************************************
파일명: OrderServiceImpl.java
기능: 상품 주문  추가, 주문번호 조회, 주문리스트 조회를 수행하는 Service 구현 클래스
작성자: 박주영

[코멘트: X]
*************************************************************/
@Service
@AllArgsConstructor
public class OrderServiceImpl implements OrderService {

	// Mapper 객체 주입
	@Autowired
	private OrderMapper mapper;

	// 주문 리스트에 추가
	@Override
	public void insertItem(OrderitemVO vo) {
		mapper.insertItem(vo);
		
	}

	// 주문 상품에 추가
	@Override
	public void insertList(OrderlistVO vo) {
		mapper.insertList(vo);
		
	}
	
	// 주문 상품 추가를 위해 최상위 주문번호 반환
	@Override
	public String getOid() {
		String oid = mapper.getOid();
		return oid;
	}
	
	// 주문 리스트 조회
	@Override
	public List<OrderVO> getOrder(String mid) {
		List<OrderVO> list = mapper.getOrder(mid);
		return list;
	}
	

}
