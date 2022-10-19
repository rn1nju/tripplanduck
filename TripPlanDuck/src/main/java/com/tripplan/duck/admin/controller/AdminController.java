package com.tripplan.duck.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tripplan.duck.admin.model.service.AdminService;
import com.tripplan.duck.common.util.PageInfo;
import com.tripplan.duck.member.model.vo.Member;
import com.tripplan.duck.trip.model.vo.Comments;
import com.tripplan.duck.withduck.model.vo.WithDuck;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminController {
	@Autowired
	private AdminService service;
	
    @GetMapping("/admin/visitor")
    public void visitor() {
		log.info("방문자 관리 페이지"); 
    }
    
    @GetMapping("/admin/withDuck")
    public ModelAndView withDuck(ModelAndView model,
    		@RequestParam(value="page", defaultValue = "1") int page) {
    	
    	List<Comments> list = null;
    	PageInfo pageInfo = null;
    	
    	pageInfo = new PageInfo(page, 10, service.getWithDuckCount(), 10);
    	list = service.getWithDuckList(pageInfo);
    	
    	System.out.println(pageInfo);
    	System.out.println(list);
    	
    	model.addObject("list", list);
    	model.addObject("pageInfo", pageInfo);
    	model.setViewName("/admin/withDuck");
    	return model;
    }
    
    @GetMapping("/admin/withDuckLatest")
    public ModelAndView withDuckLatest(ModelAndView model,
    		@RequestParam(value="page", defaultValue = "1") int page) {
    	
    	List<Comments> list = null;
    	PageInfo pageInfo = null;
    	
    	pageInfo = new PageInfo(page, 10, service.getWithDuckCount(), 10);
    	list = service.getWithDuckLatestList(pageInfo);
    	
    	System.out.println(pageInfo);
    	System.out.println(list);
    	
    	model.addObject("list", list);
    	model.addObject("pageInfo", pageInfo);
    	model.setViewName("/admin/withDuckLatest");
    	return model;
    }
    
    @GetMapping("/admin/withDuckOld")
    public ModelAndView withDuckOld(ModelAndView model,
    		@RequestParam(value="page", defaultValue = "1") int page) {
    	
    	List<Comments> list = null;
    	PageInfo pageInfo = null;
    	
    	pageInfo = new PageInfo(page, 10, service.getWithDuckCount(), 10);
    	list = service.getWithDuckOldList(pageInfo);
    	
    	System.out.println(pageInfo);
    	System.out.println(list);
    	
    	model.addObject("list", list);
    	model.addObject("pageInfo", pageInfo);
    	model.setViewName("/admin/withDuckOld");
    	return model;
    }
    
    
    @GetMapping("/admin/review")
    public ModelAndView review(ModelAndView model,
    		@RequestParam(value="page", defaultValue = "1") int page) {
    	
    	List<Comments> list = null;
    	PageInfo pageInfo = null;
    	
    	pageInfo = new PageInfo(page, 10, service.getReviewCount(), 10);
    	list = service.getReviewList(pageInfo);
    	
    	System.out.println(pageInfo);
    	System.out.println(list);
    	
    	model.addObject("list", list);
    	model.addObject("pageInfo", pageInfo);
    	model.setViewName("admin/review");
    	return model;
    }
    
    @GetMapping("/admin/reviewLatest")
    public ModelAndView reviewLatest(ModelAndView model,
    		@RequestParam(value="page", defaultValue = "1") int page) {
    	
    	List<Comments> list = null;
    	PageInfo pageInfo = null;
    	
    	pageInfo = new PageInfo(page, 10, service.getReviewCount(), 10);
    	list = service.getReviewLatestList(pageInfo);
    	
    	System.out.println(pageInfo);
    	System.out.println(list);
    	
    	model.addObject("list", list);
    	model.addObject("pageInfo", pageInfo);
    	model.setViewName("/admin/reviewLatest");
    	return model;
    }
    
    @GetMapping("/admin/reviewOld")
    public ModelAndView reviewOld(ModelAndView model,
    		@RequestParam(value="page", defaultValue = "1") int page) {
    	
    	List<Comments> list = null;
    	PageInfo pageInfo = null;
    	
    	pageInfo = new PageInfo(page, 10, service.getReviewCount(), 10);
    	list = service.getReviewOldList(pageInfo);
    	
    	System.out.println(pageInfo);
    	System.out.println(list);
    	
    	model.addObject("list", list);
    	model.addObject("pageInfo", pageInfo);
    	model.setViewName("/admin/reviewOld");
    	return model;
    }
    
    @GetMapping("/admin/member")
    public ModelAndView member(ModelAndView model,
    		@RequestParam(value="page", defaultValue = "1") int page) {
    	
    	List<Member> list = null;
    	PageInfo pageInfo = null;
    	
    	pageInfo = new PageInfo(page, 10, service.getMemberCount(), 10);
    	list = service.getMemberList(pageInfo);
    	
    	System.out.println(pageInfo);
    	System.out.println(list);
    	
    	model.addObject("list", list);
    	model.addObject("pageInfo", pageInfo);
    	model.setViewName("admin/member");
    	return model;
    }
    
    @GetMapping("/admin/chat")
    public ModelAndView chat(ModelAndView model,
    		@RequestParam(value="page", defaultValue = "1") int page) {
    	
    	List<Member> list = null;
    	PageInfo pageInfo = null;
    	
    	pageInfo = new PageInfo(page, 10, service.getMemberCount(), 10);
    	list = service.getMemberList(pageInfo);
    	
    	System.out.println(pageInfo);
    	System.out.println(list);
    	
    	model.addObject("list", list);
    	model.addObject("pageInfo", pageInfo);
    	model.setViewName("admin/member");
    	return model;
    	
    }
    
    @GetMapping("/admin/memberInfo")
    public ModelAndView memberInfo(ModelAndView model, @RequestParam(value="memberNo") int memberNo) {
    	
    	Member member = null;
    	
    	member = service.findMemberByNo(memberNo);
    	
    	model.addObject("member", member);
    	model.setViewName("/admin/memberInfo");
    	
    	return model;

    }
    
    @GetMapping("/admin/memberChange")
    public ModelAndView memberChange(ModelAndView model, @RequestParam(value="memberNo") int memberNo) {
    	
    	int result = 0;
    	
    	result = service.memberStatusChange(memberNo);
    	
    	if(result > 0) {
    		model.addObject("msg", "비회원 전환이 정상적으로 되었습니다.");
    		model.addObject("location", "/admin/member");
    	}else {
    		model.addObject("msg", "비회원 전환에 실패하였습니다.");
    		model.addObject("location", "/admin/memberInfo?memberNo");
    	}
    	
    	model.setViewName("member/msg");
    	
    	return model;
    }
    
    @GetMapping("/admin/withDuckInfo")
    public ModelAndView withDuckInfo(ModelAndView model, @RequestParam(value="withDuckNo") int withDuckNo) {
    	
    	WithDuck withDuck = null;
    	
    	withDuck = service.findWithDuckByNo(withDuckNo);
    	
    	model.addObject("withDuck", withDuck);
    	model.setViewName("/admin/withDuckInfo");
    	
    	return model;
    }
    
    @GetMapping("/admin/withDuckDelte")
    public ModelAndView withDuckDelte(ModelAndView model, @RequestParam(value="withDuckNo") int withDuckNo) {
    	
    	int result = 0;
    	
    	result = service.withDuckDelte(withDuckNo);
    	
    	if(result > 0) {
    		model.addObject("msg", "위드덕이 정상적으로 삭제 되었습니다.");
    		model.addObject("location", "/admin/withDuck");
    	}else {
    		model.addObject("msg", "위드덕 삭제에 실패하였습니다.");
    		model.addObject("location", "/admin/withDuckInfo?withDuckNo");
    	}
    	
    	model.setViewName("member/msg");
    	
    	return model;
    }
    
}
