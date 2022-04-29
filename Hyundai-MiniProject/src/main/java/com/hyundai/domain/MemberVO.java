package com.hyundai.domain;


import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	private String mid;
	private String mpassword;
	private String mname;
	private String memail;
	private String mtel;
	private long mzipcode;
	private String maddress1;
	private String maddress2;
	private String mgrade;
	private Date mdate;
	private long mpoint;
	private long menabled;
}
