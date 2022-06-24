<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Result</h1>

StartPage : <%=request.getParameter("userid") %><br>
StartPage : <%=request.getParameter("pwd") %><br>
02Page : <%=request.getParameter("02Page") %><br>
03Page : <%=request.getParameter("03Page") %><br>

</body>
</html>