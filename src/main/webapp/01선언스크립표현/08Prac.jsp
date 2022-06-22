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
	Scanner로 행와 열의 개수를 입력받아 테이블을 만드세요
	중첩 for문 사용~
-->

	<%
		java.util.Scanner sc = new java.util.Scanner(System.in);
		System.out.print("행 : ");
		int row = sc.nextInt(); 
		System.out.print("열 : ");
		int col = sc.nextInt();
		int cnt=1;
		out.println("<table>");
		for(int i=0;i<row;i++)
		{
	%>
		<tr>
		<% 
			for(int j=0;j<col;j++)
			{
					out.println("<td>"+(cnt++)+"</td>");
			}
		%>
		</tr>
		<%		
		}
		
	%>
	</table>
	
 

	










</body>
</html>