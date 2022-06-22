<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		String title = request.getParameter("title");
		String bgcolor = request.getParameter("bgcolor");
		if(bgcolor.equals("etc"))
		{
			bgcolor="blue";
		}
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=title %></title>
</head>
<body bgcolor=<%=bgcolor %>>

<h1><%=title %></h1>


</body>
</html>