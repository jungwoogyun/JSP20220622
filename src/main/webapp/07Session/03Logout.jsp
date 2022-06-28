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
		String id=(String)session.getAttribute("ID");
		session.invalidate();
		
		if(id!=null)
		{
			%>
				<script>
					alert("<%=id %>님 로그아웃!");
					location.href="03LoginForm.jsp";
				</script>
			<%
			
		}
	%>

</body>
</html>