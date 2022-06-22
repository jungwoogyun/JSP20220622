<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="01result.jsp" method="get">
		제목 : <input type="text" name="title"><br>
		색상 : <select name="bgcolor">
			<option value="red" selected>빨강</option>
			<option value="orange">주황</option>
			<option value="yellow">노랑</option>
			<option value="etc">기타</option>
		</select>
		<br>
		<input type="submit" value="전송">
	</form>

</body>
</html>