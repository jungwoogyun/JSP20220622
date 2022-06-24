<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String mode = request.getParameter("mode");
		if(mode.equals("type1"))
		{
		%>
			<jsp:forward page="A.jsp"></jsp:forward>
		<%
		}
		else if(mode.equals("type2"))
		{
		%>
			<jsp:forward page="B.jsp"></jsp:forward>
		<%			
		}
		else{
		%>
			<jsp:forward page="C.jsp"></jsp:forward>
		<%				
		}
	%>
</body>
</html>