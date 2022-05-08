package com.hyundai.domain;
import lombok.Data;

/*************************************************************
파일명: StockVO.java
기능: Stock 테이블 VO
작성자: 진영서
*************************************************************/
@Data
public class StockVO {
	private String pid;
	private String ccolorcode;
	private String ssize;
	private long samount;
}
