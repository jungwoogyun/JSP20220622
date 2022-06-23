<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="03ErrorPage.jsp"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String num = request.getParameter("num");
		String div = request.getParameter("div");
		int n = Integer.parseInt(num);
		int d = Integer.parseInt(div);
		int result = n/d;
		out.println("결과값 : " + result);
	%>

</body>
</html>