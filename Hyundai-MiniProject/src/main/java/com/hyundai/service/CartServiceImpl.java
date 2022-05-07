package com.hyundai.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.MycartVO;
import com.hyundai.mapper.CartMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class CartServiceImpl implements CartService {

	@Autowired
	private CartMapper mapper;
	
	@Override
	public ArrayList<MycartVO> getList(String mid) {
		ArrayList<MycartVO> list = mapper.getList(mid);
		
		return list;
	}

	@Override
	public void insert(MycartVO vo) {
		mapper.insert(vo);
	}

	@Override
	public int update(MycartVO vo) {
		int rslt = mapper.update(vo);
		return rslt;
	}

	@Override
	public int delete(MycartVO vo) {
		int rslt = mapper.delete(vo);
		return rslt;
	}
	

}
