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

/**
 * Handles requests for the application login page.
 */
@Controller
@RequestMapping("/login/*")
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private MemberService service;

	
	@RequestMapping(value = "/loginform", method = RequestMethod.GET)
	public String loginform() {
		logger.info("Loginform Page");

		return "/login/loginform";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public void login(@RequestParam("mid") String mid, @RequestParam("mpassword") String mpassword, HttpServletRequest request, HttpServletResponse response) throws IOException {
		logger.info("Login Page");
	
		MemberVO vo = new MemberVO();
		vo.setMid(mid);
		vo.setMpassword(mpassword);
		
		MemberVO member = service.login(vo);
		
		if(member != null) {
			// 세션 저장
			HttpSession session = request.getSession();
			session.setAttribute("member_id", member.getMid());
			session.setAttribute("member_name", member.getMname());
			response.getWriter().print(true);
		} else {
			response.getWriter().print(false);
		}	
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		logger.info("Logout Page");
		
		// 세션 삭제
		HttpSession session = request.getSession();
		if(session != null) {
			session.invalidate();
		}

		
		return "redirect:/";
	}

}
