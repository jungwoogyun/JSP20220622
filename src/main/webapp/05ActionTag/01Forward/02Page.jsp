<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:forward page="03Page.jsp" >
		<jsp:param name="02Page" value="02Page TEST입니다" />
	</jsp:forward>
	

</body>
</html>