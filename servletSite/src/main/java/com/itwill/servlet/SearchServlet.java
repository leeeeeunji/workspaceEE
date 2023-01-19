package com.itwill.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.naming.directory.SearchResult;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/search.do")
public class SearchServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset = UTF-8");
		PrintWriter out = response.getWriter();
		/*
		 * 클라이언트 요청 URL
		 *  - http://192.168.15.31/servletSite/search.do?searchkeyword=java
		 *  - http://192.168.15.31/servletSite/search.do?searchkeyword=
		 *  - http://192.168.15.31/servletSite/search.do
		 */
		
		/*
		 * 1.요청객체를 사용해서 요청시 전송되는 쿼리스트링에 있는 파라메타 받기
		 *    - 파라메타 이름은 input element의 name속성과 일치
		 *       <input type="text" name="searchkeyword">
		 *    - search.do?searchkeyword=java   
		 */
		String searchkeyword = request.getParameter("searchkeyword");
		if(searchkeyword == null || searchkeyword.equals("")) {
			/*
			 * searchkeyword가 null -> search.do
			 * searchkeyword가 "" -> search.do?searchkeyword=
			 */
			
			out.println("검색어를 입력하지 않은 경우 재미있는 지식 결과를 랜덤하게 보여드립니다.<br>");
			out.println("<a href = '05-00.search_form.html'>검색페이지</a>");
			return;
		}
		
		/*
		 * 2. 검색업무실행 -> Service객체 사용
		 */
		
		/*
		 * 3. 클라이언트로 검색결과 전송(HTML)
		 */
		out.println("<h1>" + searchkeyword + "검색결과</h1>");
		out.println("<ol>");
		
		int serachResultNo = (int)(Math.random()*10);
		for(int i = 0; i<serachResultNo; i++) {
			out.println("<li>" + searchkeyword + "검색결과</li>");
		}
		out.println("</ol>");
		out.println("<a href = '05-00.search_form.html'>검색페이지</a>");
	}

}
