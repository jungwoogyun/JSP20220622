<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>MAIN</h1>
세션ID : <%=session.getId() %><br>
계정ID : <%=session.getAttribute("ID") %><br>
세션 유지시간  : <%=session.getMaxInactiveInterval() %> 초<br>
<p id=timer></p>
<script>	 
	max=<%=session.getMaxInactiveInterval() %>;
	function timer(){
		max = max-1;
		if(max<0)
		{
			clearInterval(tmp);
			alert("세션종료");
			location.href="05LoginForm.jsp";
		}
		document.getElementById("timer").innerHTML=max;
	}
	tmp = setInterval(timer,1000);
</script>




<a href="05Logout.jsp">로그아웃</a>
</body>
</html>








