package com.hyundai.mapper;

import java.util.List;

import com.hyundai.domain.OrderVO;
import com.hyundai.domain.OrderitemVO;
import com.hyundai.domain.OrderlistVO;

public interface OrderMapper {
	
	public void insertItem(OrderitemVO vo);
	
	public void insertList(OrderlistVO vo);

	public String getOid();
	
	public List<OrderVO> getOrder(String mid);
}