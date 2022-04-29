package com.hyundai.domain;
import java.util.Date;

import lombok.Data;

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
