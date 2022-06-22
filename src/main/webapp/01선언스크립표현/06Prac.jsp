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
	java.util.Scanner sc = new java.util.Scanner(System.in);
	System.out.print("단수 입력 : ");
	int dan = sc.nextInt();
	for(int i=1;i<10;i++){
		out.println(dan + " X " + i +"="+(dan*i)+"<br>");
	}
%>















</body>
</html>