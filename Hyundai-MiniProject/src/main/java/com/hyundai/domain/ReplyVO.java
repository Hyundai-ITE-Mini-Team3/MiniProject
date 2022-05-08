package com.hyundai.domain;

import java.util.Date;

import lombok.Data;

/*************************************************************
파일명: ReplyVO.java
기능: Reply 테이블 VO
작성자: 진영서
*************************************************************/
@Data
public class ReplyVO {
	private long rid;
	private String mid;
	private long qid;
	private String rcontent;
	private Date rdate;
}
