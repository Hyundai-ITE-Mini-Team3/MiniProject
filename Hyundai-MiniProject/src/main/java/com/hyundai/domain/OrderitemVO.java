package com.hyundai.domain;
import lombok.Data;

/*************************************************************
파일명: OrderitemVO.java
기능: Orderitem 테이블 VO
작성자: 진영서
*************************************************************/
@Data
public class OrderitemVO {
	private String oid;
	private String pid;
	private String ccolorcode;
	private String ssize;
	private long oamount;
}
