package com.hyundai.domain;
import java.util.Date;

import lombok.Data;
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
