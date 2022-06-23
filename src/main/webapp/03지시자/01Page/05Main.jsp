<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="05ErrorPage.jsp"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="Ch03.BookDTO" %>
	<%
		String BookCode = request.getParameter("BookCode");
		String BookName = request.getParameter("BookName");
		String Publisher = request.getParameter("Publisher");
		
		if(BookCode=="" || BookName=="" || Publisher=="")
		{
			throw new Exception("모든 속성값 전달이 되지 않았습니다..");
		}
		
		
		BookDTO dto = new BookDTO(BookCode,BookName,Publisher);		
		out.println(dto);
	%>

</body>
</html>