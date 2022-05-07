package com.hyundai.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyundai.domain.MemberVO;
import com.hyundai.service.MemberService;

/*************************************************************
파일명: LoginController.java
기능: 로그인 페이지 이동, 로그인, 로그아웃
작성자: 박주영

[코멘트: Ajax 통신을 통해 로그인 구현, 로그인 정보를 세션에 저장]
*************************************************************/
@Controller
@RequestMapping("/login/*")
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	// MemberService 객체 주입
	@Autowired
	private MemberService service;

	
	// loginform.jsp로 이동
	@RequestMapping(value = "/loginform", method = RequestMethod.GET)
	public String loginform() {
		logger.info("Loginform Page");

		return "/login/loginform";
	}

	// Ajax 통신으로 로그인 수행
	// Parameter: mid(아이디), mpassword(비밀번호)
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public void login(@RequestParam("mid") String mid, @RequestParam("mpassword") String mpassword, HttpServletRequest request, HttpServletResponse response) throws IOException {
		logger.info("Login Page");
	
		// MemberVO 객체 생성 후 값 설정
		MemberVO vo = new MemberVO();
		vo.setMid(mid);
		vo.setMpassword(mpassword);
		
		// MemberService의 login() 호출
		MemberVO member = service.login(vo);
		
		if(member != null) { // 로그인 성공 시
			
			// 로그인 정보 세션에 저장
			HttpSession session = request.getSession();
			session.setAttribute("member_id", member.getMid());
			session.setAttribute("member_name", member.getMname());
			
			response.getWriter().print(true); // true 전달
			
		} else { // 로그인 실패 시
			
			response.getWriter().print(false); // false 전달
			
		}	
	}

	// 로그아웃 수행
	// 메인 페이지로 이동
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		logger.info("Logout Page");
		
		// 로그인 정보 세션에서 삭제
		HttpSession session = request.getSession();
		if(session != null) {
			session.invalidate();
		}

		
		return "redirect:/";
	}

}
