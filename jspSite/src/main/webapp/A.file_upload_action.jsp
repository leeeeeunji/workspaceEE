<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equalsIgnoreCase("GET")) {
		response.sendRedirect("A.file_upload_form.jsp");
		return;
	}
	/*
	file upload component 사용
	public MultipartRequest(javax.servlet.http.HttpServletRequest request,
            java.lang.String saveDirectory,
            int maxPostSize,
            java.lang.String encoding)
     throws java.io.IOException
	*/
	String saveDirectory = application.getRealPath("/WEB-INF/upload");
	int maxPostSize = 1024*1024*100;
	String encoding = "UTF-8";
	
	/*
	- DefaultFileRenamePolicy : 똑같은 이름을 가진 파일이 존재한다면 파일명(숫자) 1,2,3..를 붙여서 저장해주는 클래스
	- FileRenamePolicy        : 똑같은 이름을 가진 파일이 존재한다면 사용자가 만든 이름을 적용시킬 수 있게 해주는 클래스
	*/
	DefaultFileRenamePolicy fileRenamePolicy = new DefaultFileRenamePolicy(); //동일한 이름의 파일 업로드 시, 임의 번호가 붙여진 채로 저장됨
	
	MultipartRequest multipartRequest = 
			new MultipartRequest(request, saveDirectory, maxPostSize, encoding, fileRenamePolicy);
	
%>
<h1>Upload Data</h1>
<hr/>
<ul>
<li>application.getRealPath("") : <%=application.getRealPath("")%></li>
<li>name[request.getParameter("name")] : <%=request.getParameter("name") %></li>
<li>name[multipartRequest.getParameter("name")] : <%=multipartRequest.getParameter("name") %></li>
<li>fileone : <%=multipartRequest.getFilesystemName("fileone") %></li>
<li>filetwo : <%=multipartRequest.getFilesystemName("filetwo") %></li>
</ul>
