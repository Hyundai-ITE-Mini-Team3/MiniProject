package com.hyundai.domain;
import lombok.Data;

/*************************************************************
파일명: GradeVO.java
기능: Grade 테이블 VO
작성자: 진영서
*************************************************************/
@Data
public class GradeVO {
	private long gno;
	private String gname;
	private long gmin;
	private long gmax;
	private long gsale;
}
