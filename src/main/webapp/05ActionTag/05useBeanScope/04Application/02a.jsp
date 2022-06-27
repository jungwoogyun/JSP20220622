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
	<jsp:useBean id="bean" class="Ch05.TestBean" scope="application" />
	<!-- 값 등록 -->
	<jsp:setProperty name="bean" property="msg2" value="msg2-value" />
	
	<!-- Redirect(Request X) -->
	<%
		response.sendRedirect("03b.jsp");
	%>
	
</body>
</html>