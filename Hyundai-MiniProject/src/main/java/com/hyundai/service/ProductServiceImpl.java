package com.hyundai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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
