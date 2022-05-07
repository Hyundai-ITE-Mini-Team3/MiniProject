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

@Controller
@RequestMapping("/mypage/*")
@Log4j
@AllArgsConstructor
public class MypageController {

	@Autowired
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private OrderService o_service;
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(HttpServletRequest request, Model model) {
		logger.info("=============mypage=============");
		HttpSession session = request.getSession();
		String mid = (String)session.getAttribute("member_id");
		String mname = (String)session.getAttribute("member_name");
		logger.info("Session(mid): " + mid);
		logger.info("Session(mname): " + mname);
		MemberVO user = new MemberVO();
		user.setMid(mid);
		user.setMname(mname);
		model.addAttribute("user", user);
		
		List<OrderVO> orderList = o_service.getOrder(mid);
		model.addAttribute("orders", orderList);
		
		return "/mypage/mypage";
	}
}
