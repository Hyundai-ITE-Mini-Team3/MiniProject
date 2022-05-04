package com.hyundai.mapper;

import java.util.List;

import com.hyundai.domain.ReplyVO;

public interface ReplyMapper {
	public List<ReplyVO> getList();
	public int insert(ReplyVO vo);
	public ReplyVO read(Long rid);
	public int delete(Long rid);
	public int update(ReplyVO reply);
}
