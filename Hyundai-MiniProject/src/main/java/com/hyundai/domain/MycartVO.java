package com.hyundai.domain;
import lombok.Data;

/*************************************************************
파일명: MycartVO.java
기능: Mycart 테이블 VO
작성자: 진영서
*************************************************************/
@Data
public class MycartVO {
	private String mid;
	private String pid;
	private String psize;
	private String pcolor;
	private long pamount;
	
	private String pname;
	private long pprice;
	private String csmall;
	private String bname;
}