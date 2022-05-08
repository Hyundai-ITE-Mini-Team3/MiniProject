package com.hyundai.domain;

import java.util.Date;

import lombok.Data;

/*************************************************************
파일명: OrderVO.java
기능: 주문 조회에 사용되는 객체
작성자: 박주영
*************************************************************/
@Data
public class OrderVO {
	private String oid;
	private String pname;
	private String oamount;
	private String pprice;
	private long ostatus;
	private Date odate;
}
