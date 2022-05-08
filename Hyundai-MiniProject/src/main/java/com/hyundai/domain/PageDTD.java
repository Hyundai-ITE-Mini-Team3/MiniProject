package com.hyundai.domain;

import lombok.Getter;
import lombok.ToString;

/*************************************************************
파일명: PageDTD.java
기능: 한 페이지당 페이지 번호 시작/끝 번호 처리, 총 페이지 관리
작성자: 진영서
*************************************************************/
@Getter
@ToString
public class PageDTD {
	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int total;
	private Criteria cri; //Criteria 객체(페이징 관리)

public PageDTD(Criteria cri, int total) {
		
		this.total = total;
		this.cri = cri;
		
		//5페이지씩 보이도록, 그 외에는 이전 페이지 번호/다음 페이지 번호로 숨김
		this.endPage = (int) (Math.ceil( cri.getPageNum() /5.0)) * 5;
		
		this.startPage = this.endPage - 4;
		
		int realEnd = (int)  Math.ceil( (total * 1.0) / cri.getAmount() ) ;
		
		//totol을 통한 endPage 재계산
		if ( realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		
		//페이지 기능 활성화 여부 저장
		this.prev = (this.startPage > 1);		
		this.next = (this.endPage < realEnd);		
	}

}
