package com.hyundai.domain;
import java.util.Date;

import lombok.Data;

/*************************************************************
파일명: OrderlistVO.java
기능: Orderlist 테이블 VO
작성자: 진영서
*************************************************************/
@Data
public class OrderlistVO {
	private String oid;
	private String mid;
	private String oaddress1;
	private String oaddress2;
	private Date odate;
	private String oreceiver;
	private String otel;
	private long ousedmildeage;
	private long ousedcoupon;
	private long opayment;
	private long ostatus;
	private Date oaacountdeadline;
	private long odiscounted;
}
