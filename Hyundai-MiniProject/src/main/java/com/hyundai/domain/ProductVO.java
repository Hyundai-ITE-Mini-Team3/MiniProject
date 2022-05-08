package com.hyundai.domain;
import lombok.Data; 

/*************************************************************
파일명: ProductVO.java
기능: Product 테이블 VO
작성자: 진영서
*************************************************************/
@Data
public class ProductVO {
	private String pid;
	private long bno;
	private String clarge;
	private String cmdedium;
	private String csmall;
	private long pno;
	private String pname;
	private long pprice;
	private String pdetail;
	private String pseason;
	private long ptotalamount;
}
