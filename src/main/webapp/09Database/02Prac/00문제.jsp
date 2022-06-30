<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Table 생성
Book_Tbl
No int primary key
BookCode int not null
BookName varchar2(45) not null
Publisher varchar2(55) not null
TotalPage int 
Amount int 
-------------------------------
drop table book_tbl cascade constraints;

create table Book_tbl
(
    No int primary key,
    BookCode int not null,
    BookName varchar2(45),
    Publisher varchar2(55),
    TotalPage int,
    Amount int
);

-------------------------------
02PRAC폴더안에서 파일 만들고 진행합니다
1 Book_Tbl에 더미값 200행을 추가하세요(01Post200.jsp)
2 Book_Tbl의 모든 행을 웹페이지로 출력합니다(02Select.jsp)
3 Book_Tbl의 No가 100-150사이의 행만 Select 해서 (03Select.jsp)
페이지로 출력합니다
4 Book_Tbl의 No가 20에서 30사이의 행만 Delete합니다(04Delete.jsp)


 
</body>
</html>