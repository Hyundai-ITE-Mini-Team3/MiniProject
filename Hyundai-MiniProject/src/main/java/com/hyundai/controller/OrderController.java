package com.hyundai.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyundai.domain.MemberVO;
import com.hyundai.domain.MycartVO;
import com.hyundai.domain.OrderitemVO;
import com.hyundai.domain.OrderlistVO;
import com.hyundai.service.CartService;
import com.hyundai.service.MemberService;
import com.hyundai.service.OrderService;

/*************************************************************
파일명: OrderController.java
기능: 상품 주문
작성자: 박주영

[코멘트: 로그인 세션 있을 때만 동작, POST 방식의 form 전송을 통해 주문 구현]
*************************************************************/
@Controller
@RequestMapping("/order/*")
public class OrderController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	// Service 객체 주입
	@Autowired
	private OrderService o_service;
	@Autowired
	private MemberService m_service;
	@Autowired
	private CartService c_service;

	// 상품 주문
	// POST 방식의 폼 데이터로 주문 진행
	// Parameter: 주문할 상품 개수(pcount), Map타입의 주문할 상품 정보(orders)
	@RequestMapping(value = "/order", method = RequestMethod.POST)
	public String order(HttpServletRequest request, @RequestParam(value = "pcount")String pcount,
			@RequestParam Map<String, String> orders, Model model) {
		logger.info("Order Page");

		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("member_id");

		if (mid != null) { // 로그인 정보 있으면
			
			// MemberService의 get() 호출을 통해 MemberVO 객체 반환받음
			MemberVO member = m_service.get(mid);

			// 주문정보(Orderlist) 테이블에 insert
			OrderlistVO list = new OrderlistVO();
			list.setMid(mid);
			list.setOaddress1(member.getMaddress1());
			list.setOaddress2(member.getMaddress2());
			list.setOreceiver(member.getMname());
			list.setOtel(member.getMtel());

			// OrderService의 insertList() 호출
			o_service.insertList(list);

			// OrderService의 getOid() 호출을 통해  oid 반환받음
			String oid = o_service.getOid(mid);
			
			// 주문할 상품 갯수만큼 반복
			int cnt = Integer.parseInt(pcount);
			for (int i = 1; i <= cnt; i++) {
				// 주문아이템(Orderitem) 테이블에 insert
				OrderitemVO item = new OrderitemVO();
				item.setOid(oid);
				item.setPid(orders.get("pid" + i));
				item.setCcolorcode(orders.get("ccolorcode" + i));
				item.setSsize(orders.get("ssize" + i));
				item.setOamount(Integer.parseInt(orders.get("oamount" + i)));
				
				// OrderService의 insertItem() 호출
				o_service.insertItem(item);

				// 장바구니(Mycart) 테이블에서 주문한 상품 delete
				MycartVO cart = new MycartVO();
				cart.setMid(mid);
				cart.setPid(orders.get("pid" + i));
				
				// CartService의 delete() 호출
				c_service.delete(cart);

			}
			
			// 주문 완료 페이지로 이동
			return "/order/ordercomplete";

		} else { // 로그인 정보 없으면 로그인 페이지로 이동

			return "/login/loginform";
		}
	}

}
