<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.io.*,java.util.*" %>
	<%
		try{
			FileInputStream in = new FileInputStream("c:\\upload\\test.pptx");
			
			response.setHeader("Content-Disposition", "attachment; filename=test.pptx");
			response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
			
			ServletOutputStream os=response.getOutputStream();
			
			while(true)
			{
				int data=in.read();
				if(data==-1)
					break;
				os.write((byte)data);
			}
			os.flush();
			os.close();
			in.close();	
		}catch(Exception e){e.printStackTrace();}
	%>
	
</body>
</html>