package com.hyundai.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyundai.domain.MemberVO;
import com.hyundai.service.MemberService;

/**
 * Handles requests for the application join page.
 */
@Controller
@RequestMapping("/join/*")
public class JoinController {

	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);

	@Autowired
	private MemberService service;

	@RequestMapping(value = "/joinprovision", method = RequestMethod.GET)
	public String joinProvision() {
		logger.info("Joinprovision Page");

		return "/join/joinprovision";
	}

	@RequestMapping(value = "/joinform", method = RequestMethod.POST)
	public String joinForm() {
		logger.info("Joinform Page");

		return "/join/joinform";
	}

	// Form에서 받아온 데이터로 회원가입 진행
	// MemberService의 register() 호출
	// sp_member_insert 프로시저 호출
	@RequestMapping(value = "/joincomplete", method = RequestMethod.POST)
	public String joinComplete(@RequestParam Map<String, Object> map) {
		logger.info("Joincomplete Page");
		logger.info(map.toString());

		MemberVO member = new MemberVO();
		member.setMid(map.get("mid").toString());
		member.setMpassword(map.get("mpassword").toString());
		member.setMname(map.get("mname").toString());

		String email = map.get("memail").toString() + "@" + map.get("memaildomain").toString();
		member.setMemail(email);

		String tel = map.get("tel1").toString() + map.get("tel2").toString() + map.get("tel3").toString();
		member.setMtel(tel);

		if(!map.get("year").equals("") && !map.get("month").equals("") && !map.get("day").equals("")) {
			
			int year = Integer.parseInt(map.get("year").toString());
			int month = Integer.parseInt(map.get("month").toString());
			int day = Integer.parseInt(map.get("day").toString());
			
			Calendar cal = Calendar.getInstance();
			cal.set(year, month, day);
			Date birth = new Date(cal.getTimeInMillis());
			member.setMbirth(birth);
		}
	
		if(!map.get("maddress1").equals("") && !map.get("maddress2").equals("")) {
			member.setMaddress1(map.get("maddress1").toString());
			member.setMaddress2(map.get("maddress2").toString());
		}

		logger.info("member: " + member);
		service.register(member);

		return "/join/joincomplete";
	}
	
	// 아이디 중복 체크
	@RequestMapping(value = "/join/isdupleid", method = RequestMethod.GET)
	@ResponseBody
	public int isdupleid(HttpServletRequest request) {
		logger.info("check id");
		
		String mid = request.getParameter("id");
		int cnt = service.checkid(mid);
		
		return cnt;
	}
			
}
