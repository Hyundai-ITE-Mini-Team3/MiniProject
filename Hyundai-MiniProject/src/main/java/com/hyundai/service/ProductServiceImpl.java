package com.hyundai.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public List<ProductVO> clargeGetList(String clarge) {
		log.info("ProductVO clargeGetList 호출 "+clarge);
		return mapper.clargeGetList(clarge);
	}
	
	@Override
	public List<ProductVO> cmediumGetList(String cmedium) {
		log.info("ProductVO cmediumGetList 호출 "+cmedium);
		return mapper.cmediumGetList(cmedium);
	}
	
	
	@Override
	public List<ProductVO> getList(String csmall) {
		log.info("ProductVO get List 호출");
		return mapper.getList(csmall);
	}


}
