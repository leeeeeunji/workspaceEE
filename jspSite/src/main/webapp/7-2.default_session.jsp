<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         session="false"
         %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>기본객체[session(HttpSession)]</h1>
<hr/>
<ol>
	<li> &lt;%@ page session="true"%&gt; (HttpSession session=request.getSession();)</li>
	<li> &lt;%@ page session="false"%&gt;(session ref사용불가)</li>
</ol>
<% 
	/*
	     <<요청시 JESSIONID쿠키 존재 안할때>>
	         1.JESSIONID쿠키 존재여부 판단 후 JESSIONID쿠키 존재하지 않으면
	            세션 아이디 발행후 HttpSession 객체를 생성한 후 세션아이디를 설정 반환
	         2.HttpSession객체 사용  
	         3.JESSIONID이름의 session쿠키객체를 생성한 후 응답객체에 추가 
	     
	      <<요청시 JESSIONID쿠키 존재할때>> 
	         1.JESSIONID쿠키 존재여부 판단 후 JESSIONID쿠키 존재하면
	           	JSESSIONID쿠키의 값(세션아이디)을 사용해서 서버에 존재하는
	            HttpSession객체 중에서 세션아이디 값과 일치하는 HttpSession객체 반환(세션바인딩) 
	         2.HttpSession객체 사용
	*/  
	HttpSession session = request.getSession(true); //false -> 이미 생성되어 있는 경우에 바인딩 후 반환, 생성되어 있지 않으면 session = null
	


%>
<ol>
	<li>session객체참조변수: <%=session %></li>
	<li>session객체생성여부: <%=session.isNew() %></li>
	<li>session객체세션아이디: <%=session.getId() %></li>
	<li>session객체생성시간: <%=session.getCreationTime() %></li>
	<li>session객체유효시간: <%=session.getMaxInactiveInterval() %></li>
	<li>session객체마지막바인딩시간: <%=session.getLastAccessedTime() %></li>
</ol>










</body>
</html>
