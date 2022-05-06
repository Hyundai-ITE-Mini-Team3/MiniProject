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

@RequestMapping("/replies")
@RestController
@Log4j
@AllArgsConstructor

public class ReplyController {
	@Autowired
	private ReplyService service;
	
	@GetMapping(value = "/qid/{qid}",
			produces = {MediaType.APPLICATION_XML_VALUE,
					MediaType.APPLICATION_JSON_UTF8_VALUE}	)
	public ResponseEntity<List<ReplyVO>> getList(@PathVariable("qid") Long qid ){
		
		log.info("getList..........");
		return new ResponseEntity<>(service.getList(qid), HttpStatus.OK);
		
	}//end getList

	@PostMapping(value = "/new",
			consumes = "application/json" //요청 줄이기
			,produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody ReplyVO vo){
		
		log.info("ReplyVO" + vo);	
		int insertCount = service.register(vo);
		
		log.info("Reply INSERT COUNT : " + insertCount);
		
		//삼항식 conditional operator
		return ( insertCount == 1
				? new ResponseEntity<>("success",HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR)
		);		
	}//end create
	
	@GetMapping(value = "/{rid}",
			produces = {MediaType.APPLICATION_XML_VALUE,
					MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReplyVO> get(
			@PathVariable("rid") Long rid ){		
		log.info("get" + rid);		
		return new ResponseEntity<>(service.get(rid),HttpStatus.OK );
	}//end get
	
	@DeleteMapping(value = "/{rid}",produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(
			@PathVariable("rid") Long rid	){		
		log.info("remove" + rid);		
		//삼항식
		return (service.remove(rid) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR)
				);		
	}//end remove	
	
	@RequestMapping(value = "/{rid}",
			method = {RequestMethod.PUT, RequestMethod.PATCH},
			consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE} 	)
	public ResponseEntity<String> modify(
			@RequestBody ReplyVO vo,
			@PathVariable("rid") Long rid	){		
		vo.setRid(rid);
		log.info("rid" + rid);
		log.info("modify" + vo);		
		return (service.modify(vo) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR) 
				);//end return		
	}//end modify



}
