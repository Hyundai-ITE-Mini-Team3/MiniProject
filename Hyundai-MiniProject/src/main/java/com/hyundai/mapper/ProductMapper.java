package com.hyundai.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.ProductVO;


public interface ProductMapper {
	
	// 상품 카테고리 대분류 데이터 수 불러오기
	public int getClargeCount(String clarge);

	// 상품 카테고리 중분류 데이터 수 불러오기
	public int getCmdediumCount(String cmdedium);

	// 상품 카테고리 소분류 데이터 수 불러오기
	public int getCsmallCount(String csmall);
	
	// 상품 카테고리 대분류 리스트 불러오기(페이징 적용)
	public List<ProductVO> getListClargePaging(HashMap<String, Object> map);
	
	// 상품 카테고리 중분류 리스트 불러오기(페이징 적용)
	public List<ProductVO> getListCmdediumPaging(HashMap<String, Object> map);

	// 상품 카테고리 소분류 리스트 불러오기(페이징 적용)
	public List<ProductVO> getListCsmallPaging(HashMap<String, Object> map);
	
	// 상품 카테고리 대분류 리스트 불러오기
	public List<ProductVO> clargeGetList(String clarge);
	
	// 상품 카테고리 중분류 리스트 불러오기
	public List<ProductVO> cmediumGetList(String cmdedium);
	
	// 상품 카테고리 소분류 리스트 불러오기
	public List<ProductVO> getList(String csmall);
	
	
	// 상품 상세정보 불러오기
	public ProductVO read(String pid);
}
