<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<form method="get" action=04Googoodan.jsp>
			<fieldset>
				<legend>구구단</legend>
				<label>단수</label>
				<input type=text name="dan"> <input type=submit>
			</fieldset>
		</form>
<hr>
	<%
	try{
		int dan =Integer.parseInt(request.getParameter("dan"));
		for(int i=1;i<10;i++){
	%>
		<%=dan %> X <%=i %> = <%=dan*i %><br>	
	<%
		}
	}catch(Exception e){}
	%>
	
</body>
</html>