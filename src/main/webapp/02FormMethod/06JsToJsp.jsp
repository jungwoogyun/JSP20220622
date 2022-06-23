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
	String c1 = request.getParameter("c1");
	String c2 = request.getParameter("c2");
	String c3 = request.getParameter("c3");
	String c4 = request.getParameter("c4");
	if(c1==null&&c2==null&&c3==null&&c4==null)
	{
		c1="orange";c2="orange";c3="orange";c4="orange";
	}
	
%>

<script>
	function JSFunc(){
		form = document.FORM1;
		form[0].value="blue";
		form[1].value="orange";
		form[2].value="red";
		form[3].value="begie";
		form.action="06JsToJsp.jsp";
		form.submit();
	}
</script>

<form  name=FORM1>
	<input name=c1>
	<input name=c2>
	<input name=c3>
	<input name=c4>
	<button onclick=JSFunc()>전송</button>
</form>

<hr>
<table border=1 width=300px height=300px>
	<tr>
		<td bgcolor=<%=c1 %> >1</td>
		<td bgcolor=<%=c2 %> >2</td>
	</tr>
	<tr>
		<td bgcolor=<%=c3 %> >3</td>
		<td bgcolor=<%=c4 %> >4</td>
	</tr>
</table>

</body>
</html>