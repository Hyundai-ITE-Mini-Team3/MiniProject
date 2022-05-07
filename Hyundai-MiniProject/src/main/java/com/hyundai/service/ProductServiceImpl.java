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

@Log4j
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper mapper;
	
	@Override
	public ProductVO get(String pid) {
		log.info("ProductVO get 호출 "+pid);
		return mapper.read(pid);
	}
	
	@Override
	public int getClargeCount(String clarge) {
		log.info("[상품 대분류 수 count]");
		return mapper.getClargeCount(clarge);
	}
	
	@Override
	public int getCmdediumCount(String cmdedium) {
		log.info("[상품 중분류 수 count]");
		return mapper.getCmdediumCount(cmdedium);
	}
	
	@Override
	public int getCsmallCount(String csmall) {
		log.info("[상품 소분류 수 count]");
		return mapper.getCsmallCount(csmall);
	}
	
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
	
	@Override
	public List<ProductVO> getListCmdediumPaging(Criteria cri, String cmdedium){
		log.info("[상품 대분류 페이징 서비스 메서드 호출] "+cri);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("cmdedium", cmdedium);
		map.put("cri", cri);
		System.out.println("-----------------");
		System.out.println(map);
		return mapper.getListCmdediumPaging(map);
	}
	
	@Override
	public List<ProductVO> getListCsmallPaging(Criteria cri, String csmall){
		log.info("[상품 대분류 페이징 서비스 메서드 호출] "+cri);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("csmall", csmall);
		map.put("cri", cri);
		System.out.println("-----------------");
		System.out.println(map);
		return mapper.getListCsmallPaging(map);
	}
	
	@Override
	public List<ColorVO> getColorList() {
		log.info("[상품  Color 데이터 불러오기]");
		return mapper.getColorList();
	}
	
	@Override
	public List<ColorVO> getColorGroupByPID() {
		log.info("[상품 리스트 페이지에서 이미지에 쓰이는 대표 PID 및 색상코드 불러오기]");
		return mapper.getColorGroupByPID();
	}
	
	@Override
	public List<ColorVO> getColorPid(String pid) {
		log.info("[상품상세정보에 쓰이는  Color 데이터 불러오기]");
		return mapper.getColorPid(pid);
	}
	
	@Override
	public List<ColorVO> getColorDetail(String pid, String ccolorcode) {
		log.info("[상품상세정보에 쓰이는  Color 데이터 불러오기]");
		return mapper.getColorDetail(pid, ccolorcode);
	}
	


}
