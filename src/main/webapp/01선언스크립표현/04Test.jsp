<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	java.util.Scanner sc = new java.util.Scanner(System.in);
%>
<%
	System.out.print("문자열입력 : ");
	String str = sc.nextLine();
%>

문자열 : <%=str %><br>

</body>
</html>