package com.hyundai.mapper;

import java.util.List;

import com.hyundai.domain.OrderVO;
import com.hyundai.domain.OrderitemVO;
import com.hyundai.domain.OrderlistVO;

/*************************************************************
파일명: OrderMapper.java
기능: 상품 주문  추가, 주문번호 조회, 주문리스트 조회를 수행하는 Mapper 인터페이스
작성자: 박주영

[코멘트: X]
*************************************************************/
public interface OrderMapper {
	
	// 주문 리스트에 추가 (INSERT문 이용)
	public void insertList(OrderlistVO vo);
	
	// 주문 상품에 추가 (INSERT문 이용)
	public void insertItem(OrderitemVO vo);
	
	// 주문 상품 추가를 위해 최상위 주문번호 반환 (SELECT문 이용)
	public String getOid();
	
	// 주문 리스트 조회 (SELECT문 이용)
	public List<OrderVO> getOrder(String mid);
}