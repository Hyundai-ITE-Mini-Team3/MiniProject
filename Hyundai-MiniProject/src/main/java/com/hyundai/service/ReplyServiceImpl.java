package com.hyundai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.ReplyVO;
import com.hyundai.mapper.ReplyMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {

	// Mapper 객체 주입
	@Autowired
	private ReplyMapper mapper;
	
	// 댓글 추가
	@Override
	public int register(ReplyVO vo) {
		log.info("register....." + vo);
		return mapper.insert(vo);
	}

	// 댓글 조회
	@Override
	public ReplyVO get(Long rno) {
		log.info("get...."+ rno);
		return mapper.read(rno);
	}

	// 댓글 수정
	@Override
	public int modify(ReplyVO vo) {
		log.info("modify...."+vo);
		return mapper.update(vo);
	}

	// 댓글 제거
	@Override
	public int remove(Long rno) {
		log.info("remove...." + rno);
		return mapper.delete(rno);
	}

	// 해당 게시물 번호(qid)의 모든 댓글 조회
	@Override
	public List<ReplyVO> getList(Long qid) {
		log.info("[get list]");
		return mapper.getList(qid);
	}

}
