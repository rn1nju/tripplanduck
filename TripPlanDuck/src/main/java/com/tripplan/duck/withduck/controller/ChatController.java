package com.tripplan.duck.withduck.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tripplan.duck.member.model.vo.Member;
import com.tripplan.duck.withduck.model.service.WithDuckChatService;
import com.tripplan.duck.withduck.model.service.WithDuckService;
import com.tripplan.duck.withduck.model.vo.WithDuck;
import com.tripplan.duck.withduck.model.vo.WithDuckChat;
import com.tripplan.duck.withduck.model.vo.WithDuckChatLog;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ChatController {
	@Autowired
	private WithDuckChatService service;
	
	@Autowired
	private WithDuckService serviceWith;
	
	@GetMapping("/chatgo")
	public ModelAndView chatGo(ModelAndView model, HttpSession session, @ModelAttribute WithDuck withDuck) {
		Member loginMember = (Member)session.getAttribute("loginMember");
		System.out.println("withduck : " + withDuck);
		System.out.println("loginMember : " + loginMember);
		int result = 0;
		int result1 = 0;
		WithDuckChat withDuckChat = null;
		
		System.out.println(loginMember);

		
		System.out.println("session member : " + session.getAttribute("member"));
		if(loginMember == null) {
			model.addObject("msg", "로그인 후 이용이 가능합니다.");
			model.addObject("location", "/member/login");
			model.setViewName("member/msg");
		} else {
			result1 = serviceWith.countChatMem(withDuck.getWithNo(), loginMember.getMemberNo());
			if(result1 > 0) {
				model.addObject("msg", "이미 참여중입니다.");
				model.addObject("location", "/withduck/detail?withNo=" + withDuck.getWithNo());
				model.setViewName("member/msg");
			} else {
				
				result = service.joinChat(withDuck.getWithNo(), withDuck.getWithTitle(), loginMember.getMemberNickname(), loginMember.getMemberNo());
				List<WithDuckChat> loginChatList = service.selectloginChatList(loginMember.getMemberNo());
				System.out.println("loginChatList : " + loginChatList);
				List<WithDuckChat> joinChatList = service.selectjoinChatList(withDuck.getWithNo());
				System.out.println("joinChatList : " + joinChatList);
				List<WithDuckChatLog> chatLogList = service.selectChatLogList(withDuck.getWithNo());
				System.out.println("chatLogList : " + chatLogList);
				model.addObject("loginChatList", loginChatList);
				model.addObject("joinChatList", joinChatList);
				model.addObject("chatLogList", chatLogList);
				model.addObject("loginMember", loginMember);
				model.addObject("withDuck", withDuck);
				model.setViewName("withduck/WithDuckChat");
			}
		}
		
		return model;
	}

}
