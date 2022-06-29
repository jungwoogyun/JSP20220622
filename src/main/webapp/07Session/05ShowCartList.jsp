<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="Cartbean" class="Ch07.CartRepository" scope="application" />
<%@page import="java.util.*,Ch07.*" %>
<%
	String id=(String)session.getAttribute("ID");
	ArrayList<ProductDTO> list = Cartbean.cart.get(id);
	for(int i=0;i<list.size();i++){
		out.println(list.get(i).toString()+"<br>");
	}
	
	
%>	
	
	
</body>
</html>