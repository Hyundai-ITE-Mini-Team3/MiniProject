package com.hyundai.domain;
import lombok.Data;

@Data
public class MycartVO {
	private String mid;
	private String pid;
	private String psize;
	private String pcolor;
	private long pamount;
	
	private String pname;
	private long pprice;
	private String csmall;
	private String bname;
}