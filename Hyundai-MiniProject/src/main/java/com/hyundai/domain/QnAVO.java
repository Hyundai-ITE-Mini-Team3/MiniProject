package com.hyundai.domain;
import java.util.Date;
import lombok.Data;

/*************************************************************
파일명: QnAVO.java
기능: QnA 테이블 VO
작성자: 진영서
*************************************************************/
@Data
public class QnAVO {
	private long qid;
	private String mid;
	private String qtitle;
	private String qcontent;
	private Date qdate;
}
