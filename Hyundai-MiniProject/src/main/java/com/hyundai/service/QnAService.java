package com.hyundai.service;

import java.util.List;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.QnAVO;

public interface QnAService {
	public int getTotal(Criteria cri);

	public void register(QnAVO qna);
	
	public QnAVO get(Long qid);
	
	public boolean modify(QnAVO qna);
	
	public boolean remove(Long qid);
	
	//public List<QnAVO> getList();		
	
	public List<QnAVO> getList(Criteria cri);
	
	
}
