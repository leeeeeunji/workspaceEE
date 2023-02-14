<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!-- 
     <<요청시 JESSIONID쿠키 존재 안할 때(최초 요청 시)>>
         1.JESSIONID쿠키 존재여부 판단 후 JESSIONID쿠키 존재하지 않으면
            세션 아이디 발행후 HttpSession 객체를 생성한후 세션아이디를설정반환
         2.HttpSession객체사용  
         3.이름JESSIONID,값은 발행한세션아이디값로생성한 쿠키객체(메모리저장)를 생성한후 응답객체에 추가 
     
      <<요청시 JESSIONID쿠키존재할때>> 
         1.JESSIONID쿠키존재여부판단후 JESSIONID쿠키존재하면
           	JSESSIONID쿠키의 값(세션아이디)을 사용해서 서버에존재하는
            HttpSession객체중에서  세션아이값과 일치하는 HttpSession객체반환(세션바인딩) 
         2.HttpSession객체사용
 -->
<%
	HttpSession session = request.getSession(true);
	int count = 0;
	Integer countInt = (Integer)session.getAttribute("count");
	if(countInt == null) {
		//count key 속성객체가 존재하지 않는 경우
		count = 0;
	}else {
		//count key 속성객체가 존재하는 경우
		count = countInt.intValue();
	}
	count++;
	

	/*
	세션 장바구니 객체에 count라는 key로 Integer객체를 저장합니다.
	세션 장바구니 객체는 저장데이타를 HashMap으로 관리합니다.
	*/
	session.setAttribute("count", new Integer(count));
	
	
	System.out.println("-------------------------------------------------");
	System.out.println("클라이언트IP                  --->" + request.getRemoteAddr());
	System.out.println("세션객체 참조변수[생성,바인딩] --->" + session);
	System.out.println("세션객체 아이디                --->" + session.getId());
	System.out.println("세션객체에 저장된 카운트값     --->" + session.getAttribute("count"));
	System.out.println("-------------------------------------------------");
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>HttpSession객체를 사용한 클라이언트별 요청횟수 카운트</h1>
	<h3><he/>xxx	님	<%= count %>번째 요청입니다.
	</h3>
	<br>
	<br>
	<ol>
		<li>session객체참조변수:</li>
		<li>session객체생성여부:</li>
		<li>session객체세션아이디:</li>
		<li>session객체생성시간:</li>
		<li>session객체유효시간:</li>
		<li>session객체마지막바인딩시간:</li>
	</ol>
</body>
</html>












