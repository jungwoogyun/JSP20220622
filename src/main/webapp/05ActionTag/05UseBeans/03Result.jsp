<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="MemberBean" class="Ch05.MemberBean" />
<jsp:setProperty  name="MemberBean" property="*" />

확인 : <%=MemberBean.getEmail() %><br>
확인 : <%=MemberBean.getPwd() %> <br>
확인 : <%=MemberBean.getAddr1() %><br>
확인 : <%=MemberBean.getAddr2() %><br>
</body>
</html>