package com.hyundai.domain;

import java.util.Date;

import lombok.Data;
@Data
public class ReplyVO {
	private long rid;
	private String mid;
	private long qid;
	private String rcontent;
	private Date rdate;
}
