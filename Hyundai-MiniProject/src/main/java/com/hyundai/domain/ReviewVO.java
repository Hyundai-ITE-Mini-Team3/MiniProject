package com.hyundai.domain;
import java.util.Date;

import lombok.Data;

/*************************************************************
파일명: ReviewVO.java
기능: Review 테이블 VO
작성자: 진영서
*************************************************************/
@Data
public class ReviewVO {
	private long rno;
	private String mid;
	private String mname;
	private String pid;
	private String pname;
	private String pcolor;
	private String psize;
	private Date rdate;
	private long rrate;
	private long rprice;
	private long rcomfortable;
	private StringBuffer rtitle;
	private StringBuffer rcontent;
}
