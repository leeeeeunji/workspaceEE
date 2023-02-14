package com.itwill.summer.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * - 모든 컨트롤러 클래스가 구현해야 하는 규칙(interface)
 * - Controller interface를 구현한 클래스의 객체는 DispatcherServlet이 
 *    handleRequest() 메쏘드를 호출해서 업무 실행
 * - Controller interface 구현한 객체는 forwardPath를 반환   
 */
public interface Controller {
	public String handleRequest(HttpServletRequest request, HttpServletResponse response);
}
