package com.hyundai.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {
	private String oid;
	private String pname;
	private String oamount;
	private String pprice;
	private long ostatus;
	private Date odate;
}
