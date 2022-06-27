<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Bean 생성 -->
	<jsp:useBean id="bean" class="Ch05.TestBean" scope="request" />


	<h1>RESULT</h1>
	확인 : <%=bean.toString() %><br>
</body>
</html>