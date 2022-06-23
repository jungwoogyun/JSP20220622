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
	[문제]
	1 Ch03안의 BookDTO를 만든다
	2 BookDTO의 속성은
	private String BookCode
	private String BookName
	private String Publisher 
	로 지정, 생성자,Getter and Setter, ToString() 모두 만든다
	3 Index.jsp에서 form 태그를 만들어 
	BookCode,BookName,Publisher를 입력받아 
	05Main.jsp으로 내용전달한다
	
	4 05Main에서는 BookDTO객체를 만들어 전달받은 파라미터 값을 저장하는 객체를 생성하고
	화면에 출력한다
	
	5 이중 하나라도 비어있는 값이 있다면 05ErrorPage로 넘겨서 메시지 유형을 출력한다
	ex) BookName이 비어있을시 'BookName이 입력되지 않았습니다'가 05ErrorPage의 출력내용
	
-->
	<form action="05Main.jsp">
		<input name="BookCode">
		<input name="BookName">
		<input name="Publisher">
		<input type=submit>
	</form>






</body>
</html>