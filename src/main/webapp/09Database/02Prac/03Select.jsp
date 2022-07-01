<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


<%@page import="Ch09.*,java.util.*" %>
<%
	BookDAO dao = BookDAO.getInstance();
	
	
	ArrayList<BookDTO> list=dao.Select(1,10);
	
	System.out.println("LIST's Size : "+ list.size());
	
%>
	<div id=wrapper class="container-md w-75" style="margin:10px auto">
		
		<form action="02Select.jsp">
			<div class="row mb-3">
				<div class="col-5" style=width:130px;>
					<select name=type class="form-select w-100" id=search>
						<option value="C">코드</option>
						<option value="N" selected>이름</option>
						<option value="P">출판사</option>
					</select>
				</div>
				<div class="col">
					<input type=text name=word class="form-control">
				</div>
				<div class=col>
					<input type="submit" class="btn btn-secondary" value="검색">
				</div>
				
			</div>
		</form>
	
		
		<table class="table table-striped">
			<tr>
				<th>NO</th>
				<th>BookCode</th>
				<th>BookName</th>
				<th>Publisher</th>
				<th>TotalPage</th>
				<th>Amount</th>
			</tr>
			<%
				for(int i=0;i<list.size();i++)
				{
					%>
					<tr>
						<td><%=list.get(i).getNo() %></td>
						<td><%=list.get(i).getBookcode() %></td>
						<td><%=list.get(i).getBookname() %></td>
						<td><%=list.get(i).getPublisher() %></td>
						<td><%=list.get(i).getTotalpage() %></td>
						<td><%=list.get(i).getAmount() %></td>
					</tr>
					<%
				}	
			%>
		
		</table>
	
	</div>




</body>
</html>