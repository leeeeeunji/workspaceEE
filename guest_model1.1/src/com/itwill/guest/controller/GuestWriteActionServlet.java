package com.itwill.guest.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.guest.Guest;
import com.itwill.guest.GuestService;

/**
 * Servlet implementation class GuestWriteActionServlet
 */
@WebServlet("/guest_write_action.do")
public class GuestWriteActionServlet extends HttpServlet {
	private GuestService guestService;
	public GuestWriteActionServlet() throws Exception {
		guestService = new GuestService();
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forwardPath="";
		
		/*
		GET방식이면 guest_main.jsp redirection
		
		0.요청객체encoding설정
		1.파라메타받기(guest_name,guest_email,guest_homepage,guest_title,guest_content)
		  Guest객체생성
		2.GuestService객체생성
		3.GuestService객체 insert(Guest객체) 메쏘드호출
		4.guest_list.jsp로 redirection
		*/
		try {
			if(request.getMethod().equalsIgnoreCase("GET")){
				//response.sendRedirect("guest_main.do");
				forwardPath="redirect:guest_main.do";
			}else {
				String guest_name=request.getParameter("guest_name");
				String guest_email=request.getParameter("guest_email");
				String guest_homepage=request.getParameter("guest_homepage");
				String guest_title=request.getParameter("guest_title");
				String guest_content=request.getParameter("guest_content");
				guestService.insert(
						new Guest(0,guest_name,null,guest_email,guest_homepage,guest_title,guest_content));
				forwardPath="redirect:guest_list.do";
			}
		}catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("forward:/WEB-INF/views/guest_error.jsp");
			
		}
		

		/*****************forward or redirect*******************/
		/*
		 * forward -> forward:/WEB-INF/views/guest_xxx.jsp
		 * redirect -> redirect:guest_xxx.do
		 * (redirect는 jsp(X), do(O))
		 */
		String[] pathArray = forwardPath.split(":");
		String forwardOrRedirect = pathArray[0];
		String path = pathArray[1];
		
		if(forwardOrRedirect.equals("redirect")) {
			//redirect
			response.sendRedirect(path);
		}else {			
			//forwarding (model2에서는 forward가 디폴트)
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
		/*******************************************************/
	}

}
