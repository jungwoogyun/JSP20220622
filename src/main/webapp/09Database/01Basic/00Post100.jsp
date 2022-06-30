<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.sql.*,java.util.*" %>
	<%
	
		String url = "jdbc:oracle:thin:@localhost:1521:xe"; //URL
		String id = "book_ex";	//ID
		String pw = "1234";		//PW
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		try{
		//드라이버 적재
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//DB에 연결 
		conn = DriverManager.getConnection(url,id,pw);
		System.out.println("Connected...");
		//쿼리 객체 생성
		
		int i=2;
		while(i<=100)
		{
			pstmt = conn.prepareStatement("insert into tbl_board values(?,?,?,?)");
			pstmt.setInt(1,i);
			pstmt.setString(2,"Title"+i);
			pstmt.setString(3,"Content"+i);
			pstmt.setString(4,"Writer"+i);
			int result = pstmt.executeUpdate();
			i++;
		}
		

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{pstmt.close();}catch(Exception e1){e1.printStackTrace();}
			try{conn.close();}catch(Exception e1){e1.printStackTrace();}
		}
	
	%>

</body>
</html>