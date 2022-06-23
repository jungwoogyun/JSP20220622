<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Redirect결과</h1>

<%
String userid 	= request.getParameter("userid");
String pwd 		= request.getParameter("pwd");
%>
ID : <%=userid %><br>
PW : <%=pwd %><br>
</body>
</html>