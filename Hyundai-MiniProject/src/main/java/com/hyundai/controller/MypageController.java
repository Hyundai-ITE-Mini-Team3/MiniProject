package com.hyundai.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyundai.domain.MemberVO;
import com.hyundai.domain.OrderVO;
import com.hyundai.service.OrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
/*************************************************************
파일명: MypageController.java
기능: 마이 페이지 이동
작성자: 진영서

[코멘트: 로그인 상태에서 마이페이지로 이동, 주문 내역 확인가능]
*************************************************************/
@Controller
@RequestMapping("/mypage/*")
@Log4j
@AllArgsConstructor
public class MypageController {

	@Autowired
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// OrderService 객체 주입
	@Autowired
	private OrderService o_service;
	
	// mypage.jsp로 이동
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(HttpServletRequest request, Model model) {
		logger.info("=============mypage=============");
		// 세션에서 값 조회
		HttpSession session = request.getSession(); 
		String mid = (String)session.getAttribute("member_id"); //세션에 저장된 로그인 유저 아이디 저장
		String mname = (String)session.getAttribute("member_name"); //세션에 저장된 로그인 유저 이름 저장
		logger.info("Session(mid): " + mid);
		logger.info("Session(mname): " + mname);
		
		if (mid != null) {	// 로그인 정보 있으면
			// MemberVO 객체 생성 후 값 설정(mid, mname)
			MemberVO user = new MemberVO(); 
			user.setMid(mid);
			user.setMname(mname);
			model.addAttribute("user", user);
			
			// OrderService의 getOrder() 호출
			//해당 아이디의 주문 내역을 불러와 리스트에 저장
			List<OrderVO> orderList = o_service.getOrder(mid);
			model.addAttribute("orders", orderList);
			return "/mypage/mypage";

		} else {	// 로그인 정보 없으면 로그인 페이지로 이동

			return "/login/loginform";
		}
	}
}
