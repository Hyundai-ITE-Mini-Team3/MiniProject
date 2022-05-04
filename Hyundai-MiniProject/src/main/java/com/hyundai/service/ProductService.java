package com.hyundai.service;

import java.util.List;

import com.hyundai.domain.ProductVO;

public interface ProductService {

	//public void register(ProductVO product);
	
	public ProductVO get(Long pno);
	
	//public boolean modify(ProductVO pno);
	
	//public boolean remove(Long pno);
	
	public List<ProductVO> getList();		
}
