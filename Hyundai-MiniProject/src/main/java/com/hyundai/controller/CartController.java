package com.hyundai.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyundai.domain.MycartVO;
import com.hyundai.service.CartService;

/*************************************************************
파일명: CartController.java
기능: 장바구니 조회, 추가, 수량 수정, 삭제
작성자: 박주영

[코멘트: 로그인 세션 있을 때만 동작, POST 방식의 form 전송을 통해 추가,수정,삭제 구현]
*************************************************************/
@Controller
@RequestMapping("/cart/*")
public class CartController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	// CartService 객체 주입
	@Autowired
	private CartService service;

	// cartList.jsp로 이동
	// 세션의 로그인 정보를 이용하여 장바구니 리스트 조회
	@RequestMapping(value = "/cartList", method = RequestMethod.GET)
	public String getCartList(HttpServletRequest request, Model model) {
		logger.info("Cart getList Page");
		
		// 세션에서 값 조회
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("member_id");

		if (mid != null) {	// 로그인 정보 있으면

			// CartService의 getList() 호출
			ArrayList<MycartVO> list = service.getList(mid);
			logger.info("CartList: " + list);

			// Model에 MycartVO 리스트 담아 전송
			model.addAttribute("cartList", list);

			return "/cart/cartList";

		} else {	// 로그인 정보 없으면 로그인 페이지로 이동

			return "/login/loginform";
		}
	}

	// 장바구니 추가
	// Parameter: MycartVO
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertCart(HttpServletRequest request, MycartVO cart, Model model) {
		logger.info("Cart Insert Page");

		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("member_id");

		if (mid != null) {	// 로그인 정보 있으면
			// mid 설정
			cart.setMid(mid);
			// CartService의 insert() 호출
			service.insert(cart);

			return "redirect:/cart/cartList";

		} else {	// 로그인 정보 없으면 로그인 페이지로 이동

			return "/login/loginform";
		}
	}

	// 장바구니 수정
	// Parameter: MycartVO
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateCart(HttpServletRequest request, MycartVO cart, Model model) {
		logger.info("Cart Update Page");

		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("member_id");

		if (mid != null) {	// 로그인 정보 있으면
			// mid 설정
			cart.setMid(mid);
			// CartService의 update() 호출
			service.update(cart);

			return "redirect:/cart/cartList";

		} else {	// 로그인 정보 없으면 로그인 페이지로 이동

			return "/login/loginform";
		}
	}

	// 장바구니 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteCart(HttpServletRequest request, MycartVO cart, Model model) {
		logger.info("Cart Delete Page");

		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("member_id");

		if (mid != null) {	// 로그인 정보 있으면
			// mid 설정
			cart.setMid(mid);
			// CartService의 delete() 호출
			service.delete(cart);

			return "redirect:/cart/cartList";

		} else {	// 로그인 정보 없으면 로그인 페이지로 이동

			return "/login/loginform";
		}
	}
}
