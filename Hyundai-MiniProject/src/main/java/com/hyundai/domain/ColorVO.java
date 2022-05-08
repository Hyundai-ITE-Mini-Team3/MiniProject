package com.hyundai.domain;
import lombok.Data;

/*************************************************************
파일명: ColorVO.java
기능: Color 테이블 VO
작성자: 진영서
*************************************************************/
@Data
public class ColorVO {
	private String pid;
	private String ccolorcode;
	private String cimage1;
	private String cimage2;
	private String cimage3;
	private String ccolorimage;
	private String cmatchpid;
}
