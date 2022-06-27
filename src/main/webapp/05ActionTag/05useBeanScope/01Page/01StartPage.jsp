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
		Scope의 Value 정리
		page(기본) :		현재페이지에서만 유효
		request : 		Request 객체유지에 따라 유효
		session : 		Session 객체유지에 따라 유효
		application : 	Application(Tomcat)  종료시까지 유효
		
	-->
	
	<!-- Bean 생성 -->
	<jsp:useBean id="bean" class="Ch05.TestBean" scope="page" />
	<!-- 값 등록 -->
	<jsp:setProperty name="bean" property="msg1" value="msg1-value" />
	
	<!-- Forward(Request유지) -->
	<jsp:forward page="02a.jsp" />
		
</body>
</html>