package com.hyundai.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*************************************************************
파일명: Criteria.java
기능: 페이징 관련 객체
작성자: 진영서
*************************************************************/
@Getter
@Setter
@ToString
public class Criteria {	
	
	private int pageNum; //페이지 번호	
	private int amount; //한 페이지당 글 개수
	
	private String type; //검색기능 중 검색 필터
	private String keyword; //검색기능 중 검색 단어
	
	public String[] getTypeArr() {		
		//삼항식[Condition Operator]      ?   TURE   : FALSE 
		return (type == null) ? new String[] {}  :  type.split("");		
	}//end getType..

	public Criteria() {
		//Default 값: 첫페이지(1), 한페이지당 글 개수(8)
		this(1,8);
	}//end cri...	
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}//end Cri..	

}//end class
