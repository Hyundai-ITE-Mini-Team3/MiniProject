package com.hyundai.domain;
import java.util.Date;

import lombok.Data;

/*************************************************************
파일명: EventVO.java
기능: Event 테이블 VO
작성자: 진영서
*************************************************************/
@Data
public class EventVO {
	private long eid;
	private String ename;
	private String edetail;
	private Date estartdate;
	private Date eenddate;
	private String eimage;
	private long eamount;
	private long elimit;
}
