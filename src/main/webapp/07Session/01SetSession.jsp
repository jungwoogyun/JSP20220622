<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>세션객체에 값넣기</h1>




<%
	String id = "abcd";
	String pw = "1234";
	
	session.setAttribute("ID", id);
	session.setAttribute("PW", pw);
	session.setMaxInactiveInterval(20); //1800초 기본값 
%>

<a href="01SessionInfo.jsp">세션정보확인</a>
</body>
</html>






