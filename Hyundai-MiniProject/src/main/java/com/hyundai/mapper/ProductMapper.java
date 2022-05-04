package com.hyundai.mapper;

import java.util.List;
import com.hyundai.domain.ProductVO;


public interface ProductMapper {
	//public List<ProductVO> getList();
	
	
	// 상품 카테고리 소분류 리스트 불러오기
	public List<ProductVO> getList(String csmall);
	
	// 관리자페이지는 따로 하지 않을거므로 상품 insert 막아놓음
	//public void insert(ProductVO Product);
	
	//public void insertSelectKey(ProductVO product);
	
	// 상품 상세정보 불러오기
	public ProductVO read(String pid);
	
	// 관리자페이지는 따로 하지 않을거므로 상품 delete 막아놓음
	//public int delete (Long pno);
	
	// 관리자페이지는 따로 하지 않을거므로 상품 update 막아놓음
	//public int update(ProductVO product);
}
