<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%!
		//멤버변수
		int a = 0;
		public int addone(){
			a++;
			return a;
		}
	%>
	변수 a의값 = <%=addone() %><br>
	

</body>
</html>