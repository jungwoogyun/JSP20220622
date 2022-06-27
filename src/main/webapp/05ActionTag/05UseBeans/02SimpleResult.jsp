<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%@page import="Ch05.BookBean" %>
		<%
			//requst에서 book관련 parameter꺼내기
			//BookBean클래스로 객체 생성 후에 각 속성에 book관련 parameter값 저장
			//화면에 출력(.toString()을 이용해보세요~)

/* 			String bookname=request.getParameter("bookname");
			String bookcode=request.getParameter("bookcode");
			String bookprice=request.getParameter("bookprice");
			BookBean bean = new BookBean();
			bean.setBookcode(bookcode);
			bean.setBookname(bookname);
			bean.setBookprice(bookprice); */
		%>
		<jsp:useBean id="bean" class="Ch05.BookBean" scope="page" />
		<jsp:setProperty  name="bean" property="*" />
		확인 : <%=bean.toString() %><br>
		코드 : <%=bean.getBookcode() %><br>
		제목 : <%=bean.getBookname() %><br>
		가격 : <%=bean.getBookprice() %><br>
	
</body>
</html>