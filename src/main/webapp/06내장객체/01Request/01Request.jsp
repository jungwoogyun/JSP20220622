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
	String protocol = request.getProtocol();
	String serverName = request.getServerName();
	int serverPort = request.getServerPort();
	String remoteAddr = request.getRemoteAddr();
	String remoteHost = request.getRemoteHost();
	String method = request.getMethod();
	StringBuffer requestURL = request.getRequestURL();
	String requestURI = request.getRequestURI();
	String useBrowser = request.getHeader("User-Agent");
	String fileType = request.getHeader("Accept");
%>
<h1>Request 내장객체 확인</h1>
프로토콜 : <%=protocol %><br>
서버이름 : <%=serverName %><br>
서버포트 : <%=serverPort %><br>
클라주소 : <%=remoteAddr %><br>
클라이름 : <%=remoteHost %><br>
사용함수 : <%=method %><br>
요청경로 : <%=requestURL %><br>
요청경로 : <%=requestURI %><br>
브라우저 : <%=useBrowser %><br>
파일타입 : <%=fileType %><br>





</body>
</html>





