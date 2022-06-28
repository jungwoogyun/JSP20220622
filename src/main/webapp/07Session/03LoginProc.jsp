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
			String id=request.getParameter("userid");
			String pw = request.getParameter("pwd");
			
			if(id.equals("abcd")&&pw.equals("1234"))
			{
				session.setAttribute("ID",id);
				session.setAttribute("PW", pw);
				session.setMaxInactiveInterval(30);
				response.sendRedirect("03Main.jsp");
			}
			else
			{
				response.sendRedirect("03LoginForm.jsp");
			}
	%>

</body>
</html>