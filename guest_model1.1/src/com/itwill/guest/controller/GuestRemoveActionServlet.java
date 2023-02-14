package com.itwill.guest.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.guest.GuestService;

/**
 * Servlet implementation class GuestRemoveActionServlet
 */
@WebServlet("/guest_remove_action.do")
public class GuestRemoveActionServlet extends HttpServlet {
	private GuestService guestService;
	public GuestRemoveActionServlet() throws Exception {
		guestService = new GuestService();
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forwardPath="";
		
		try {
			if(request.getMethod().equalsIgnoreCase("GET")){
				//response.sendRedirect("guest_main.do");
				forwardPath="redirect:guest_main.do";
			}
			String guest_noStr=request.getParameter("guest_no");
			int deleteRowCount = guestService.delete(Integer.parseInt(guest_noStr));
			//response.sendRedirect("guest_list.do");
			forwardPath="redirect:guest_list.do";
		}catch (Exception e) {
			e.printStackTrace();
			forwardPath="forward:/WEB-INF/views/guest_error.jsp";
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
