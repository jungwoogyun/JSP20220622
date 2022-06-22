<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String w = request.getParameter("divw");
	String h = request.getParameter("divh");
	String r = request.getParameter("divr");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
	div{
		border : 1px solid gray;
	}
</style>


<div id=d1></div>


<script>
	d1 = document.getElementById("d1");
	d1.style.width="<%=w%>px" ;
	d1.style.height="<%=h%>px" ;
	d1.style.borderRadius="<%=r%>%" ;
</script>

</body>
</html>



