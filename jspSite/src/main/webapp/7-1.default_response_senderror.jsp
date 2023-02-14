<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED); //405 허용되지 않는 메소드
%>