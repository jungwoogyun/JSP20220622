<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="04ErrorPage.jsp"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="Ch03.*" %>
<%
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	
	if(name=="" && addr=="")
	{
		throw new Exception("Name , addr둘다 NULL입니다..");
	}else if(name==""){
		throw new Exception("Name이 NULL입니다..");
	}else if(addr==""){
		throw new Exception("Addr이 NULL입니다..");
	}
	
	SampleDTO dto = new SampleDTO(name,addr);
	out.println("확인 : " + dto);
%>
	

</body>
</html>