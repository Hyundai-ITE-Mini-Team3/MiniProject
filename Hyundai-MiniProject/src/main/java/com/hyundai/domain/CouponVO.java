package com.hyundai.domain;
import java.util.Date;

import lombok.Data;
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
