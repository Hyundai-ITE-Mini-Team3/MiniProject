package com.hyundai.domain;
import java.util.List;

import lombok.Data;
@Data
public class OrderitemVO {
	private String oid;
	private String pid;
	private String ccolorcode;
	private String ssize;
	private long oamount;
}
