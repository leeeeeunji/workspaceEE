<%@ page contentType = "text/html; charset=UTF-8" %>
<%! 
	private int count = 0;

	public void jspInit() {
		System.out.println("1. jspInit()메소드 호출[객체 생성 시, 생성자 호출 후 단 한번 호출]");
	}
	public void jspDestroy() {
		System.out.println("3. jspDestroy()메소드 호출[객체가 메모리에서 해지될 때 호출]");		
	}
%>
<% 
		System.out.println("2. _jspService() 메소드 요청 시마다 호출");		
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
			<body bgcolor=#40e0d0 style=font-size:9pt;line-height:140%;> 
			<center>			
			 현재까지의 요청은
			<font color=#0000FF>
			 <%= ++count %>
			</font>
			 입니다 
			</center> 
			</body> 
</html> 
