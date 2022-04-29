package com.hyundai.domain;
import java.util.Date;

import lombok.Data;
@Data
public class QnAVO {
	private long qid;
	private String mid;
	private String qtitle;
	private String qcontent;
	private Date qdate;
	private Date qreplydate;
	private String qreplytitle;
	private String qreplycontent;
	private String qmanager;
}
