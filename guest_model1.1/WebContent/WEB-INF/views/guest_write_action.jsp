<%@page import="com.itwill.guest.Guest"%>
<%@page import="com.itwill.guest.GuestService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	GET방식이면 guest_main.jsp redirection
	
	0.요청객체encoding설정
	1.파라메타받기(guest_name,guest_email,guest_homepage,guest_title,guest_content)
	  Guest객체생성
	2.GuestService객체생성
	3.GuestService객체 insert(Guest객체) 메쏘드호출
	4.guest_list.jsp로 redirection
	*/
%>



