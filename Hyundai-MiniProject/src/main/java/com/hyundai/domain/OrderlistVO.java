package com.hyundai.domain;
import java.util.Date;

import lombok.Data;
@Data
public class OrderlistVO {
	private String oid;
	private String mid;
	private String oaddress1;
	private String oaddress2;
	private Date odate;
	private String oreceiver;
	private String otel;
	private long ousedmildeage;
	private long ousedcoupon;
	private long opayment;
	private long ostatus;
	private Date oaacountdeadline;
	private long odiscounted;
}
