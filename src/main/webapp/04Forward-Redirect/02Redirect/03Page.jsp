<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<%@page import="Ch03.*,java.net.*" %>
		<%
			request.setAttribute("03Page","03Page에서전달하는 내용");
			
			SampleDTO sample = new SampleDTO("홍길동","대구");
			request.setAttribute("sample",sample);
		
			/* 리다이렉트 방식 */
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String param = URLEncoder.encode("한글값 테스트");
			
			response.sendRedirect("04Result.jsp?Retest="+param);
			
			
			
		%>
</body>
</html>