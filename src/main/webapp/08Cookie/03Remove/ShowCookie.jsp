<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키확인</h1>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies!=null)
		{
			for(int i=0;i<cookies.length;i++){
				String name=cookies[i].getName();
				String value = cookies[i].getValue();
				out.println("name : " + name + " value : " + value+"<br>");
			}
		}
	%>
	<a href="RemoveCookie.jsp?name=c1">C1쿠키삭제</a>&nbsp
	<a href="RemoveCookie.jsp?name=c2">C2쿠키삭제</a>

</body>
</html>