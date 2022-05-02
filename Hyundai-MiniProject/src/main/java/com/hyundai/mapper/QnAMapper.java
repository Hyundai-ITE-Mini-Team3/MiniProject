//작성자 : 진영서
//기능 : QnA
package com.hyundai.mapper;

import java.util.List;

import com.hyundai.domain.QnAVO;

public interface QnAMapper {
	public List<QnAVO> getList();
	public void insert(QnAVO qna);
	public QnAVO read(long qid);
	public int delete(long qid);
	public int update(QnAVO qna);
}
