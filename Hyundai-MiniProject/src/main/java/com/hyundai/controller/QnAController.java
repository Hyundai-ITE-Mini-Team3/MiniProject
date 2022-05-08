package com.hyundai.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.MemberVO;
import com.hyundai.domain.PageDTD;
import com.hyundai.domain.QnAVO;
import com.hyundai.service.QnAService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
/*************************************************************
파일명: QnAController.java
기능: QnA 게시판 글 조회/작성/수정/삭제
작성자: 진영서

[코멘트: 페이징 처리를 위한 Criteria 클래스 활용, POST 방식의 form 전송을 통해 글작성/수정 구현]
*************************************************************/

@Controller
@RequestMapping("/qna/*")
@Log4j
@AllArgsConstructor
public class QnAController {
	
	@Autowired
	// Service 객체 주입
	private QnAService service;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	//페이징 적용X
//
//	public String qna_getlist(Model model) {
//		logger.info("=============qna page=============");
//		model.addAttribute("list", service.getList());
//		
//		return "/qna/list";
//	}


	//페이징 적용O
	//게시물 목록 불러오기
	//Get 방식
	// Parameter: Criteria(페이징 처리 활용)
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void qna_getlist(Criteria cri, Model model) {
		log.info("=============list"+cri+"=============");
		//게시물 리스트를 받아 "list"에 저장
		model.addAttribute("list", service.getList(cri)); 
		//전체 게시물의 개수
		int total = service.getTotal(cri); 
		//게시판 페이징을 위한 "pageMaker" 저장
		model.addAttribute("pageMaker", new PageDTD(cri, total));
	}
	
	//게시글 작성
	//Get 방식
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void qna_register(HttpServletRequest request, Model model) {
		// 세션에서 값 조회
		HttpSession session = request.getSession();
		//세션에 저장된 로그인 유저 아이디
		String mid = (String)session.getAttribute("member_id"); 
		logger.info("Session(mid): " + mid);
		
		// MemberVO 객체 생성 후 값 설정
		MemberVO user = new MemberVO(); 
		user.setMid(mid); 
		//"user"에 mid 저장하여 사용
		model.addAttribute("user", user); 
	}
	
	//게시글 작성폼으로 이동
	//Post 방식
	// Parameter: QnAVO (입력폼에서 받은 QnA 객체)
	// /qna/list로 redirect
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String qna_register(Model model, QnAVO qna, RedirectAttributes rttr) {
		logger.info("============QnA register page=============");
		logger.info("qna"+qna); 
		
		// QnAService의 register() 호출
		service.register(qna);
		
		//result에 작성하는 qid 저장
		rttr.addFlashAttribute("result", qna.getQid());
		//addFlashAttribute로 전달한 값은 url뒤에 붙지 않음
		return "redirect:/qna/list"; 
	}
	
	//게시글 조회
	//Get 방식
	@RequestMapping(value = {"/get"}, method = RequestMethod.GET)
	public void get(@RequestParam("qid") Long qid, 
			@ModelAttribute("cri") Criteria cri, 
			HttpServletRequest request, Model model) {
		logger.info("============Get=============");
		// 세션에서 값 조회
		HttpSession session = request.getSession();
		String mid = (String)session.getAttribute("member_id"); //세션에 저장된 로그인 유저 아이디
		logger.info("Session(mid): " + mid);
		
		//로그인 유저 아이디 저장
		model.addAttribute("mid", mid); 
		//클릭한 게시물의 qid 저장
		model.addAttribute("qna", service.get(qid)); 
	}
	
	//게시물 수정 폼으로 이동
	//Get 방식
	//modify.jsp 로 이동
	@RequestMapping(value = {"/modify"}, method = RequestMethod.GET)
	public String modify(@RequestParam("qid") Long qid,
			@ModelAttribute("cri") Criteria cri, Model model) {
		logger.info("============Modify=============");
		
		//QnAService의 get() 호출
		//전달받은 qid를 통해 게시글 조회하여 객체 정보 저장
		model.addAttribute("qna", service.get(qid)); 
		
		// MemberVO 객체 생성 후 값 설정
		QnAVO qna = new QnAVO();
		//QnAService의 get() 호출
		//수정할 게시글의 qid를 통해 qna 정보 get
		qna = service.get(qid); 
		logger.info("qna"+qna);
		return "/qna/modify";
	}

	//게시물 수정
	//Post 방식
	// Parameter: QnAVO
	// qna/list로 redirect
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modify(QnAVO qna, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri) {
		logger.info("============Modify: "+qna+"=============");
		if(service.modify(qna)) { // qna 수정 성공시
			logger.info("============Modify: "+qna+"=============");
			rttr.addFlashAttribute("result", "success"); //"success" 값 저장하여 전달
		}
		//수정전 게시물의 pageNum,amount 값 전달
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount",cri.getAmount());

		return "redirect:/qna/list"; 
	}
	
	//게시글 삭제
	//Get 방식
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam("qid") Long qid, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri) {
		logger.info("============Remove=============");
		if(service.remove(qid)) { //해당하는 qid 의 게시물 삭제 성공시
			rttr.addFlashAttribute("result", "success"); //"success" 값 저장하여 전달
		}
		
		//수정전 게시물의 pageNum,amount 값 전달
		rttr.addAttribute("pageNum", cri.getPageNum()); 
		rttr.addAttribute("amount",cri.getAmount()); 

		return "redirect:/qna/list"; // qna/list로 redirect
	}
	
}
