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
	public ProductVO get(Long pno) {
		log.info("ProductVO get 호출 "+pno);
		return mapper.read(pno);
	}

	@Override
	public List<ProductVO> getList() {
		log.info("ProductVO get List 호출");
		return mapper.getList();
	}

}
