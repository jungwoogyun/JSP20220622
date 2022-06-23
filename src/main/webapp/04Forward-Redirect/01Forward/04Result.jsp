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
	String id = request.getParameter("userid");
	String pw = request.getParameter("pwd");
	String page02=(String)request.getAttribute("02Page");
	String page03=(String)request.getAttribute("03Page");
	BookDTO book = (BookDTO)request.getAttribute("book");
	SampleDTO sample = (SampleDTO)request.getAttribute("sample");
	
%>
ID : <%=id %><br>
PW : <%=pw %><br>
P2 : <%=page02 %><br>
P3 : <%=page03 %><br>
book :<%=book %><br>
sample : <%=sample %><br>

</body>
</html>