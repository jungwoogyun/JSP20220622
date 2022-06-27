<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>MAIN PAGE</h1>
	<%
		String remoteIP =request.getRemoteAddr();
	%>
	<%=remoteIP %>님이 접속하셨습니다!<br>
	
	<%@page import="java.io.*,java.util.*" %>
	<%
		try{
			FileWriter wout = new FileWriter("c:\\upload\\test.txt",true);
			//접속날짜시간 , 원격IP ,원격브라우저 
			wout.write(new Date().toString()+" | ");
			wout.write(request.getRemoteAddr()+" | ");
			wout.write(request.getHeader("User-Agent")+"\n");
			wout.flush();
			wout.close();
		}catch(Exception e){e.printStackTrace();}
	%>

</body>
</html>