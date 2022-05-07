package com.hyundai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.OrderVO;
import com.hyundai.domain.OrderitemVO;
import com.hyundai.domain.OrderlistVO;
import com.hyundai.mapper.OrderMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper mapper;

	@Override
	public void insertItem(OrderitemVO vo) {
		mapper.insertItem(vo);
		
	}

	@Override
	public void insertList(OrderlistVO vo) {
		mapper.insertList(vo);
		
	}
	
	@Override
	public String getOid() {
		String oid = mapper.getOid();
		return oid;
	}
	
	@Override
	public List<OrderVO> getOrder(String mid) {
		List<OrderVO> list = mapper.getOrder(mid);
		return list;
	}
	

}
