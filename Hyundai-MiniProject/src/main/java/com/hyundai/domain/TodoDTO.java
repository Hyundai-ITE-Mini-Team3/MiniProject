package com.hyundai.domain;

import java.util.Date;
import lombok.Data;

@Data
public class TodoDTO {	
	private String title;
	private Date dueDate;
}//end clas