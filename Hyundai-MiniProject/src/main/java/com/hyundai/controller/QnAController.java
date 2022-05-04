//작성자: 진영서
//기능: QnA 관련 페이지 컨트롤러 

package com.hyundai.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyundai.domain.MemberVO;
import com.hyundai.domain.QnAVO;
import com.hyundai.service.QnAService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/qna/*")
@Log4j
@AllArgsConstructor
public class QnAController {
	
	@Autowired
	private QnAService service;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String qna_getlist(Model model) {
		logger.info("=============qna page=============");
		model.addAttribute("list", service.getList());
		
		return "/qna/qnalist";
	}
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void qna_register(Model model) {
		MemberVO user = new MemberVO();
		user.setMname("사용자");
		user.setMid("newbie");
		model.addAttribute("user", user);
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String qna_register(Model model, QnAVO qna, RedirectAttributes rttr) {
		logger.info("============QnA register page=============");
		logger.info("qna"+qna);
		service.register(qna);
		rttr.addFlashAttribute("result", qna.getQid());
		return "redirect:/qna/list";
	}
	
	@RequestMapping(value = {"/get"}, method = RequestMethod.GET)
	public void get(@RequestParam("qid") Long qid, Model model) {
		logger.info("============Get=============");
		model.addAttribute("qna", service.get(qid));
	}
	@RequestMapping(value = {"/modify"}, method = RequestMethod.GET)
	public String modify(@RequestParam("qid") Long qid, Model model) {
		logger.info("============Modify=============");
		model.addAttribute("qna", service.get(qid));
		QnAVO qna = new QnAVO();
		qna = service.get(qid);
		logger.info("qna"+qna);
		return "/qna/modify";
	}

	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modify(QnAVO qna, RedirectAttributes rttr) {
		logger.info("============Modify: "+qna+"=============");
		if(service.modify(qna)) {
			logger.info("============Modify: "+qna+"=============");
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/qna/list";
	}
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam("qid") Long qid, RedirectAttributes rttr) {
		logger.info("============Remove=============");
		if(service.remove(qid)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/qna/list";
	}
	
}
