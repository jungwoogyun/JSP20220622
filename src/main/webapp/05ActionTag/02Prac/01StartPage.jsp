<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="02Forwarder.jsp">
			<input name=userid><br>
			<input name=pwd><br>
			<select name=mode>
				<option value=type1>A->B->C</option>
				<option value=type2>B->C</option>
				<option value=type3>C</option>
			</select>
			
			<input type=submit>
		</form>

</body>
</html>

<!-- 
[문제]
01StartPage에서
Mode를 선택하여
해당 페이지를 차례로 이동하도록
설정합니다

Type1선택시
A->B->C페이지순으로 포워딩

Type2선택시
B->C페이지 순으로 포워딩

Type3선택시
C페이지로 바로 이동 

이후 C페이지에서는
던져지는 모든파라미터값을 출력

 -->