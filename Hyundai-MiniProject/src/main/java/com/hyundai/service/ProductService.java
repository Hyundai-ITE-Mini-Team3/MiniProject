package com.hyundai.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.ProductVO;
import com.hyundai.domain.ColorVO;
import com.hyundai.domain.Criteria;

public interface ProductService {

	// pid를 통해 상품 상세정보 불러오기
	public ProductVO get(String pid);
	
	public int getClargeCount(String clarge);
	
	public int getCmdediumCount(String cmdedium);
	
	public int getCsmallCount(String csmall);
	
	// 상품 대분류 불러오기(페이징 적용)
	public List<ProductVO> getListClargePaging(Criteria cri, String clarge);
	
	// 상품 중분류 불러오기(페이징 적용)
	public List<ProductVO> getListCmdediumPaging(Criteria cri, String clarge);

	// 상품 소분류 불러오기(페이징 적용)
	public List<ProductVO> getListCsmallPaging(Criteria cri, String clarge);
	
	public List<ColorVO> getColorList();
	
	public List<ColorVO> getColorGroupByPID();
	
	public List<ColorVO> getColorPid(String pid);
	
	public List<ColorVO> getColorDetail(@Param("pid") String pid, @Param("ccolorcode") String ccolorcode);
}
