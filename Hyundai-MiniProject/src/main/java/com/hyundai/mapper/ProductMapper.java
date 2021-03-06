package com.hyundai.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.ColorVO;
import com.hyundai.domain.ProductVO;

/*************************************************************
파일명: ProductMapper.java
기능: 상품 리스트, 상세정보, 상품 컬러코드 조회하는 Mapper 인터페이스
작성자: 신동근

[코멘트: X]
*************************************************************/

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
	
	// 상품 리스트 출력에 사용되는 컬러 코드 불러오기(색상정보)
	public List<ColorVO> getColorList();
	
	// 상세정보페이지에 상품 pid에 맞는 컬러코드 불러오기
	public List<ColorVO> getColorPid(String pid);
	
	// 상품 리스트 페이지에서 이미지에 쓰이는 대표 PID 및 색상코드 불러오기
	public List<ColorVO> getColorGroupByPID();

	// 상품 상세정보에서 PID와 컬러코드를 통해서 데이터를 받아와 상세정보페이지에 이미지 3개 쓸수있도록 불러오기
	public List<ColorVO> getColorDetail(@Param("pid") String pid, @Param("ccolorcode") String ccolorcode);
	
	// 상품 상세정보 불러오기
	public ProductVO read(String pid);
}
