package com.hyundai.domain;

import java.util.Date;

import lombok.Data;

/*************************************************************
파일명: MemberVO.java
기능: Member 테이블 VO
작성자: 진영서
*************************************************************/
@Data
public class MemberVO {
	private String mid;
	private String mpassword;
	private String mname;
	private String memail;
	private String mtel;
	private Date mbirth;
	private String maddress1;
	private String maddress2;
	private String mgrade;
	private Date mdate;
	private long mpoint;
	private long menabled;
}
