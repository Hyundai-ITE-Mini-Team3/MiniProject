package com.hyundai.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.ColorVO;
import com.hyundai.domain.Criteria;
import com.hyundai.domain.ProductVO;
import com.hyundai.mapper.ProductMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: ProductServiceImpl.java
기능: 상품 리스트, 상세정보, 상품 컬러코드 조회하는 Service 구현 클래스
작성자: 신동근

[코멘트: X]
*************************************************************/

@Log4j
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {

	// ProductMapper 객체 주입
	@Autowired
	private ProductMapper mapper;
	
	// 상품 상세정보 불러오기 
	@Override
	public ProductVO get(String pid) {
		log.info("ProductVO get 호출 "+pid);
		return mapper.read(pid);
	}
	
	// 상품 카테고리 대분류 데이터 수 불러오기
	@Override
	public int getClargeCount(String clarge) {
		log.info("[상품 대분류 수 count]");
		return mapper.getClargeCount(clarge);
	}
	
	// 상품 카테고리 중분류 데이터 수 불러오기
	@Override
	public int getCmdediumCount(String cmdedium) {
		log.info("[상품 중분류 수 count]");
		return mapper.getCmdediumCount(cmdedium);
	}
	
	// 상품 카테고리 소분류 데이터 수 불러오기
	@Override
	public int getCsmallCount(String csmall) {
		log.info("[상품 소분류 수 count]");
		return mapper.getCsmallCount(csmall);
	}
	
	// 상품 카테고리 대분류 리스트 불러오기(페이징 적용)
	@Override
	public List<ProductVO> getListClargePaging(Criteria cri, String clarge){
		log.info("[상품 대분류 페이징 서비스 메서드 호출] "+cri);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("clarge", clarge);
		map.put("cri", cri);
		System.out.println("-----------------");
		System.out.println(map);
		return mapper.getListClargePaging(map);
	}
	
	// 상품 카테고리 중분류 리스트 불러오기(페이징 적용)
	@Override
	public List<ProductVO> getListCmdediumPaging(Criteria cri, String cmdedium){
		log.info("[상품 중분류 페이징 서비스 메서드 호출] "+cri);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("cmdedium", cmdedium);
		map.put("cri", cri);
		System.out.println("-----------------");
		System.out.println(map);
		return mapper.getListCmdediumPaging(map);
	}
	
	// 상품 카테고리 소분류 리스트 불러오기(페이징 적용)
	@Override
	public List<ProductVO> getListCsmallPaging(Criteria cri, String csmall){
		log.info("[상품 소분류 페이징 서비스 메서드 호출] "+cri);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("csmall", csmall);
		map.put("cri", cri);
		System.out.println("-----------------");
		System.out.println(map);
		return mapper.getListCsmallPaging(map);
	}
	
	// 상품 리스트 출력에 사용되는 컬러 코드 불러오기(색상정보)
	@Override
	public List<ColorVO> getColorList() {
		log.info("[상품  Color 데이터 불러오기]");
		return mapper.getColorList();
	}
	
	// 상품 리스트 페이지에서 이미지에 쓰이는 대표 PID 및 색상코드 불러오기
	@Override
	public List<ColorVO> getColorGroupByPID() {
		log.info("[상품 리스트 페이지에서 이미지에 쓰이는 대표 PID 및 색상코드 불러오기]");
		return mapper.getColorGroupByPID();
	}
	
	// 상세정보페이지에 상품 pid에 맞는 컬러코드 불러오기
	// 상세정보페이지에 컬러코드이미지 쓸수있도록 사용하려고 함
	@Override
	public List<ColorVO> getColorPid(String pid) {
		log.info("[상품상세정보에 쓰이는  Color 데이터 불러오기(getColorPid)]");
		return mapper.getColorPid(pid);
	}
	
	// 상품 상세정보에서 PID와 컬러코드를 통해서 데이터를 받아와 상세정보페이지에 이미지 3개 쓸수있도록 불러오기
	@Override
	public List<ColorVO> getColorDetail(@Param("pid") String pid, @Param("ccolorcode") String ccolorcode) {
		log.info("[상품상세정보에 쓰이는  Color 데이터 불러오기(getColorDetail)]");
		return mapper.getColorDetail(pid, ccolorcode);
	}
	


}
