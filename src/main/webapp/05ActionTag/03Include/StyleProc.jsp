<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@page import="Ch05.*,java.io.*" %>
	<%
		
		
		String  border =request.getParameter("border");
		String	bgcolor = request.getParameter("bgcolor");
		String	height = request.getParameter("height");
		
		Writer wout = new FileWriter("C:\\style\\header\\style.txt");
		
		wout.write(border+" ");
		wout.write(bgcolor+" ");
		wout.write(height);
		wout.flush();
		wout.close();
		
		
		response.sendRedirect("03Admin.jsp");
	%>
	
	
</body>
</html>