package com.tripplan.duck.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	// ���ƿ� �� �÷���
	@GetMapping("/likeplan")
	public String LikePlan() throws Exception {
		
		return "mypage/MyPageLikeplan";
	}
	
	// ���ƿ� �� ������
	@GetMapping("/liketrip")
	public String LikeTrip() throws Exception {
		
		return "mypage/MyPageLiketrip";
	}
	
	// �ۼ��� ����
	@GetMapping("/comment")
	public String Comment() throws Exception {
		
		return "mypage/MyPageComment";
	}
	
	// ȸ�� ���� ����
	@GetMapping("/updateform")
	public String UpdateForm() throws Exception {
		
		return "mypage/UpdateForm";
	}
	
	// ȸ�� Ż��
	@GetMapping("/dropout")
	public String DropOut() throws Exception {
		
		return "mypage/DropOut";
	}
}
