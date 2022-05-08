package com.hyundai.domain;
import java.util.Date;

import lombok.Data;

/*************************************************************
파일명: CouponVO.java
기능: Coupon 테이블 VO
작성자: 진영서
*************************************************************/
@Data
public class CouponVO {
	private String ccode;
	private long eid;
	private String mid;
	private String cname;
	private Date cstartdate;
	private Date cenddate;
	private long cstate;
}
