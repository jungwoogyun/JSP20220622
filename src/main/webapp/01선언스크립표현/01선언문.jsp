<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 
		선언문 
		서블릿의 멤버변수/메서드를 선언할 수 있는 영역
		(JSP페이지안에서)
		
		톰캣서버 동작동안에는 유지가 된다.
		
	-->
	<%!
		//변수 추가
		String hello = "Hello world!";
		//매서드 추가
		public String testFunc(){
			System.out.println("선언문테스트");
			return "ABCD";
		}
	%>
	
	<!--  
		표현식
	-->
	<%=hello %><br>
	<%=testFunc() %><br>
	
	
	
	
	
</body>
</html>