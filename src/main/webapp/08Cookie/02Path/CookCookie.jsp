<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  
		setPath() : 클라이언트의 쿠키를 서버의 어느 위치에서 받을지 결정
	-->
	<%
		Cookie c1 = new Cookie("C1","Value1");
		c1.setMaxAge(60*60);
		c1.setPath("/"); 	//모든 URL 접근시 전달
		Cookie c2 = new Cookie("C2","Value2");
		c2.setMaxAge(60*60);
		c2.setPath("./");	//현재 디렉토리에서 접근시만 전달
		Cookie c3 = new Cookie("C3","Value3");
		c3.setMaxAge(60*60);
		c3.setPath("/08Cookie/01Basic/"); //해당 경로로 요청했을때만 쿠키 전달
		
		
		response.addCookie(c1);
		response.addCookie(c2);
		response.addCookie(c3);
	
	%>
</body>
</html>