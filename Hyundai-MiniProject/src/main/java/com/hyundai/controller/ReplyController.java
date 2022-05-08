package com.hyundai.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;

import com.hyundai.domain.ReplyVO;
import com.hyundai.service.ReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
/*************************************************************
파일명: ReplyController.java
기능: 댓글 작성/조회/수정/삭제
작성자: 진영서

[코멘트: Ajax 통신을 통해 댓글 구현, 로그인한 유저와 작성자가 일치할 경우만 댓글 수정/삭제 가능]
*************************************************************/
@RequestMapping("/replies")
@RestController
@Log4j
@AllArgsConstructor

public class ReplyController {
	@Autowired
	// Service 객체 주입
	private ReplyService service;
	
	//게시물 당 댓글 조회
	// Parameter: qid(글번호)
	@GetMapping(value = "/qid/{qid}",
			produces = {MediaType.APPLICATION_XML_VALUE,
					MediaType.APPLICATION_JSON_UTF8_VALUE}	)
	public ResponseEntity<List<ReplyVO>> getList(@PathVariable("qid") Long qid ){
		
		log.info("getList..........");
		//ReplyService의 getList() 호출
		return new ResponseEntity<>(service.getList(qid), HttpStatus.OK); //댓글 리스트 리턴
		
	}

	//댓글 작성
	@PostMapping(value = "/new",
			consumes = "application/json" //요청 줄이기
			,produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody ReplyVO vo){
		
		log.info("ReplyVO" + vo);	
		
		//ReplyService의 register() 호출
		int insertCount = service.register(vo); //댓글 insert 성공시 1 반환
		log.info("Reply INSERT COUNT : " + insertCount);
		
		//삼항식 conditional operator
		//댓글 작성 성공시 success 리턴
		return ( insertCount == 1
				? new ResponseEntity<>("success",HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR)
		);		
	}
	
	
	//댓글 조회
	@GetMapping(value = "/{rid}",
			produces = {MediaType.APPLICATION_XML_VALUE,
					MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReplyVO> get(
			@PathVariable("rid") Long rid ){		
		log.info("get" + rid);		
		return new ResponseEntity<>(service.get(rid),HttpStatus.OK ); //댓글 번호를 통해 댓글 객체 정보 리턴
	}//end get
	
	
	//댓글 삭제
	// Parameter: rid(댓글번호)
	@DeleteMapping(value = "/{rid}",produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(
			@PathVariable("rid") Long rid	){		
		log.info("remove" + rid);		

		//ReplyService의 remove() 호출
		//댓글 삭제 성공시 success 리턴
		return (service.remove(rid) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR)
				);		
	}
	
	
	//댓글 수정
	// Parameter: rid(댓글번호)
	@RequestMapping(value = "/{rid}",
			method = {RequestMethod.PUT, RequestMethod.PATCH},
			consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE} 	)
	public ResponseEntity<String> modify(
			@RequestBody ReplyVO vo,
			@PathVariable("rid") Long rid	){	
		
		//수정하는 댓글의 번호 저장
		vo.setRid(rid);
		log.info("rid" + rid);
		log.info("modify" + vo); //수정될 댓글객체
		
		//ReplyService의 modify() 호출
		//댓글 수정 성공시 success 리턴
		return (service.modify(vo) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR) 
				);	
	}


}
