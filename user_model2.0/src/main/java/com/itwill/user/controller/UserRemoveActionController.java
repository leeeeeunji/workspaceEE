package com.itwill.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.summer.mvc.Controller;
import com.itwill.user.UserService;
import com.itwill.user.UserServiceImpl;

public class UserRemoveActionController implements Controller {
	private UserService userService;
	public UserRemoveActionController() throws Exception {
		userService = new UserServiceImpl();
	}
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String forwardPath = "";
		String sUserId = (String)request.getSession().getAttribute("sUserId");
		/**************** login_check *******************/
		/*
		String sUserId = (String)request.getSession().getAttribute("sUserId");
		if(sUserId == null) {
			forwardPath = "redirect:user_main.do";
			return forwardPath;
		}
		*/
		/*********************************************/
		/*
		0.login 여부체크
		1.GET방식이면 redirect:user_main.do  forwardPath반환
		2.요청객체인코딩설정
		3.세션에있는 sUserId를 사용해서 UserService.remove(sUserId) 메쏘드호출
		4.성공: redirect:user_main.do  forwardPath반환
		  실패: forward:/WEB-INF/views/user_error.jsp  forwardPath반환
		*/
		try {
			if(request.getMethod().equalsIgnoreCase("GET")) {
				forwardPath = "redirect:user_main.do";
				return forwardPath;
			}
			int result = userService.remove(sUserId);
			request.getSession().invalidate();
			forwardPath = "redirect:user_main.do";
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/views/user_error.jsp";
			//forward인 이유 : redirect로 보내면 www.naver.com/error~~이런 식으로 뜸. forward 사용하면 error이미지 같이 띄우니까~! main을 띄울거면 redirect 써도 되게쯰
		}
		return forwardPath;
	}

}
