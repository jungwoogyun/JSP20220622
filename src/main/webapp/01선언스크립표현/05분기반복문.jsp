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
	for(int i=0;i<10;i++){
		out.println("Hello World<br>");
	}
	int a=100;
	if(a%2==0){
		out.println(a+" 는 짝수 입니다..<br>");
	}
%>

<!-- 
	1 문제
		Scanner 로 단수값을 입력받아 해당 구구단을 출력
	2 문제
		2단부터 9단까지 출력 
 -->





</body>
</html>