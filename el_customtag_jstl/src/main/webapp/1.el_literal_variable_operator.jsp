<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.bean.Guest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("int1", 10);
	pageContext.setAttribute("int2", 20);
	pageContext.setAttribute("double1", 0.5);
	pageContext.setAttribute("double2", 3.14159);
	pageContext.setAttribute("string1", "KIM");
	pageContext.setAttribute("string2", "인성");
	pageContext.setAttribute("bool1", true);
	pageContext.setAttribute("bool2", false);
	pageContext.setAttribute("married", true);
	pageContext.setAttribute("age", 43);
	pageContext.setAttribute("weight", 78.23);
	pageContext.setAttribute("height", 183);
	
	Guest guest = null;
	List<Guest> guestList = new ArrayList<Guest>();
	Map<String, Guest> guestMap = new HashMap<String, Guest>();
	String emptyStr = "";
	pageContext.setAttribute("guest", guest);
	pageContext.setAttribute("guestList", guestList);
	pageContext.setAttribute("guestMap", guestMap);
	pageContext.setAttribute("emptyStr", emptyStr);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EL 리터럴,변수,연산자</h1>
	<hr>
	<ul>
		<li>----EL 리터럴(상수)----</li>
		<li>정수형 리터럴 : ${1234}</li>
		<li>실수형 리터럴 : ${3.14159}</li>
		<li>논리형 리터럴 : ${true}</li>
		<li>문자형 리터럴 : ${"문자"}</li>
		<li>문자형 리터럴 : ${'문자'}</li>
		
		<li>---------EL 변수[SCOPE객체의 속성이름]--------</li>
		<li>${int1}</li>
		<li>${int2}</li>
		<li>${double1}</li>
		<li>${double2}</li>
		<li>${string1}</li>
		<li>${string2}</li>
		<li>${bool1}</li>
		<li>${bool2}</li>
		<li>${married}</li>
		<li>${age}</li>
		<li>${weight}</li>
		<li>${height}</li>
		
		<li>---------EL 연산자--------</li>
		<li>${23 + 56}</li>
		<li>${23 - 56}</li>
		<li>${23 * 56}</li>
		<li>${1 / 3}</li>
		<li>${(1+2)-89/(34+90)*0.2}</li>
		<li>${int1 + int2}</li>
		<li>${int1 - int2}</li>
		<li>${int1 * int2}</li>
		<li>${int1 / int2}</li>
		<li>${double1 / double2 + 0.22234}</li>
		<li>{string1 + string2} string1, string2 모두 문자열 => 연산 불가 </li>
		<li>${string1}${string2}</li>
		<li>${"123"+"456"+"7"}</li>
		<li>age>=30 -> ${age>=30}</li>
		<li>age<=30 -> ${age<=30}</li>
		<li>age<30 -> ${age<30}</li>
		<li>age>30 -> ${age>30}</li>
		<li>age==30 -> ${age==30}</li>
		<li>age!=30 -> ${age!=30}</li>
		<br>
		<li>age ge 30 -> ${age ge 30}</li>
		<li>age le 30 -> ${age lt 30}</li>
		<li>age gt 30 -> ${age gt 30}</li>
		<li>age lt 30 -> ${age lt 30}</li>
		<li>age ne 30 -> ${age ne 30}</li>
		<li>age eq 30 -> ${age eq 30}</li>
		<li>30대인가요? ${ age >= 30 && age < 40}</li>
		<li>30대 아닌가요? ${ !(age < 30 && age >= 40) }</li>
		<li>30대 아닌가요? ${ age < 30 || age >= 40}</li>
		<li>30대이고 180이상인가요? ${ (age >= 30 && age < 40) && height >= 180 }</li>
		<li>30대이고 180이상인가요? ${ (age ge 30 and age lt 40) && height ge 180 }</li>
		
		<li>----------null or "" or size체크---------</li>
		<li>${guest == null}</li>
		<li>${emptyStr.equals("")}</li>
		<li>${guestList.size() == 0}</li>
		<li>${guestMap.size() == 0}</li>
		
		<li>----------null or size체크(empty연산자)---------</li>
		<li>${empty(guest)}</li>
		<li>${empty emptyStr}</li>
		<li>${empty guestList}</li>
		<li>${empty guestMap}</li>
		<li>${empty ''}</li>
		<li>${empty ""}</li>
		<li>${empty null}</li>
		


	</ul>
</body>
</html>







