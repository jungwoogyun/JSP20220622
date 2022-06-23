<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<%@page import="Ch03.*" %>
		<%
			request.setAttribute("03Page","03Page에서전달하는 내용");
			
			SampleDTO sample = new SampleDTO("홍길동","대구");
			request.setAttribute("sample",sample);
		
			/* 포워딩방식 */
			RequestDispatcher dispatcher=
			request.getRequestDispatcher("04Result.jsp");
			dispatcher.forward(request,response);
			
		%>
</body>
</html>