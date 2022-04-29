package com.hyundai.domain;
import lombok.Data; 

@Data
public class ProductVO {
	private String pid;
	private long bno;
	private String clarge;
	private String cmedium;
	private String csmall;
	private long pno;
	private String pname;
	private long pprice;
	private String pdetail;
	private String pseason;
	private long ptotalamount;
}
