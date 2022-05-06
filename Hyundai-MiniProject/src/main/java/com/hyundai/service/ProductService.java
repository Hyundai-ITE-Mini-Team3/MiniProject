package com.hyundai.service;

import java.util.List;

import com.hyundai.domain.ProductVO;

public interface ProductService {

	//public void register(ProductVO product);
	
	// pid를 통해 상품 상세정보 불러오기
	public ProductVO get(String pid);
	
	//public boolean modify(ProductVO pno);
	
	//public boolean remove(Long pno);
	
	// 상품 대분류 불러오기
	public List<ProductVO> clargeGetList(String clarge);
	
	// 상품 중분류 불러오기
	public List<ProductVO> cmediumGetList(String cmedium);
	
	// 상품 소분류 불러오기
	public List<ProductVO> getList(String csmall);		
}
