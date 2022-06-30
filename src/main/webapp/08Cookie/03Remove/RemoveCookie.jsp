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
		String name=request.getParameter("name");
		
		Cookie[] cookies = request.getCookies();
		if(cookies!=null)
		{
			for(int i=0;i<cookies.length;i++){
				if(cookies[i].getName().equals(name))
				{
					cookies[i].setMaxAge(0);//쿠키 제거
					response.addCookie(cookies[i]);//쿠키갱신
					%>
						<script>
							alert("쿠키삭제 완료!");
							location.href="ShowCookie.jsp";
						</script>
					<%
				} 
			}
		}
	%>
	<script>
			alert("해당쿠키는 존재하지 않습니다..");
			location.href="ShowCookie.jsp";
	</script>
	
</body>
</html>