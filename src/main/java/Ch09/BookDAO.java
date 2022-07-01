package Ch09;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BookDAO {
	
	private static BookDAO instance = new BookDAO();
	public static BookDAO getInstance() {
		if(instance==null)
			instance=new BookDAO();
		return instance;
	}
	private String url = "jdbc:oracle:thin:@localhost:1521:xe"; //URL
	private String id = "book_ex";	//ID
	private String pw = "1234";		//PW
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private BookDAO() {
		try {
			
			//드라이버 적재
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//DB에 연결 
			conn = DriverManager.getConnection(url,id,pw);
			System.out.println("Connected...");
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//조회함수
	public ArrayList<BookDTO> Select(){
		
		ArrayList<BookDTO> list = new ArrayList();
		try {
			pstmt=conn.prepareStatement("select * from book_tbl");
			rs= pstmt.executeQuery();
			
			
			BookDTO dto=null;
			while(rs.next())
			{
				dto=new BookDTO();
				dto.setNo(rs.getInt("NO"));
				dto.setBookcode(rs.getInt("bookcode"));
				dto.setBookname(rs.getString("bookname"));
				dto.setPublisher(rs.getString("publisher"));
				dto.setTotalpage(rs.getInt("totalpage"));
				dto.setAmount(rs.getInt("amount"));
				
				list.add(dto);	
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try{rs.close();}catch(Exception e) {}
			try{pstmt.close();}catch(Exception e) {}
		}
		
		return list;
	}
	
	//조회함수(조건검색)
	//Type : C : bookcode , N : bookname ,P : publisher
	public ArrayList<BookDTO> Select(String type,BookDTO search)
	{
		ArrayList<BookDTO> list = new ArrayList();
		try {
			
			if(type.equals("C"))
			{
				pstmt=conn.prepareStatement("select * from book_tbl where bookcode like '%'||?||'%'");
				pstmt.setInt(1, search.getBookcode());
			}
			else if(type.equals("N"))
			{
				pstmt=conn.prepareStatement("select * from book_tbl where bookname like '%'||?||'%'");
				pstmt.setString(1, search.getBookname());
			}
			else if(type.equals("P"))
			{
				pstmt=conn.prepareStatement("select * from book_tbl where publisher like '%'||?||'%'");
				pstmt.setString(1, search.getPublisher());
			}
			
			rs= pstmt.executeQuery();
			
			
			BookDTO dto=null;
			while(rs.next())
			{
				dto=new BookDTO();
				dto.setNo(rs.getInt("NO"));
				dto.setBookcode(rs.getInt("bookcode"));
				dto.setBookname(rs.getString("bookname"));
				dto.setPublisher(rs.getString("publisher"));
				dto.setTotalpage(rs.getInt("totalpage"));
				dto.setAmount(rs.getInt("amount"));
				
				list.add(dto);	
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try{rs.close();}catch(Exception e) {}
			try{pstmt.close();}catch(Exception e) {}
		}
		
		return list;
		
		
	}
	//조회함수(범위 조회)
	public ArrayList<BookDTO> Select(int start , int end)
	{
		
		ArrayList<BookDTO> list = new ArrayList();
		try {

			pstmt=conn.prepareStatement("select * from book_tbl where No>=? and No<=?");
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs= pstmt.executeQuery();
			BookDTO dto=null;
			while(rs.next())
			{
				dto=new BookDTO();
				dto.setNo(rs.getInt("NO"));
				dto.setBookcode(rs.getInt("bookcode"));
				dto.setBookname(rs.getString("bookname"));
				dto.setPublisher(rs.getString("publisher"));
				dto.setTotalpage(rs.getInt("totalpage"));
				dto.setAmount(rs.getInt("amount"));
				
				list.add(dto);	
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try{rs.close();}catch(Exception e) {}
			try{pstmt.close();}catch(Exception e) {}
		}
		return list;
	}
	
	//조회함수(조건검색 + 범위지정)
	public ArrayList<BookDTO> Select(Criteria cri , BookDTO search)
	{
		ArrayList<BookDTO> list = new ArrayList();
		try {
			
			if(cri.getType().equals("C"))
			{
				pstmt=conn.prepareStatement("select * from (select * from book_tbl where bookcode like '%'||?||'%' order by No asc) where rownum Between 1 and ?");
				pstmt.setInt(1, search.getBookcode());
				pstmt.setInt(2, cri.getEnd());
			}
			else if(cri.getType().equals("N"))
			{
				pstmt=conn.prepareStatement("select * from (select * from book_tbl where bookname like '%'||?||'%' order by No asc) where rownum Between 1 and ?");
				pstmt.setString(1, search.getBookname());
				pstmt.setInt(2, cri.getEnd());
			}
			else if(cri.getType().equals("P"))
			{
				pstmt=conn.prepareStatement("select * from (select * from book_tbl where publisher like '%'||?||'%' order by No asc) where rownum Between 1 and ?");
				pstmt.setString(1, search.getPublisher());
				pstmt.setInt(2, cri.getEnd());
			}
			
			rs= pstmt.executeQuery();
			
			
			BookDTO dto=null;
			while(rs.next())
			{
				dto=new BookDTO();
				dto.setNo(rs.getInt("NO"));
				dto.setBookcode(rs.getInt("bookcode"));
				dto.setBookname(rs.getString("bookname"));
				dto.setPublisher(rs.getString("publisher"));
				dto.setTotalpage(rs.getInt("totalpage"));
				dto.setAmount(rs.getInt("amount"));
				
				list.add(dto);	
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try{rs.close();}catch(Exception e) {}
			try{pstmt.close();}catch(Exception e) {}
		}
		
		return list;
	
	}
	
	
	
	
	
	
	//삽입함수
	//삭제함수
	//수정함수
	//Post200처리
	public void Post200(BookDTO dto) {
		try {
			for(int i=1;i<=200;i++)
			{
				pstmt=conn.prepareStatement("insert into book_tbl values(?,?,?,?,?,?)");
				pstmt.setInt(1, i);
				pstmt.setInt(2, dto.getBookcode()+i);
				pstmt.setString(3, dto.getBookname()+i);
				pstmt.setString(4, dto.getPublisher()+i);
				pstmt.setInt(5,dto.getTotalpage()+i);
				pstmt.setInt(6, dto.getAmount()+i);
				pstmt.executeUpdate();
			}		
		}catch(Exception e) {
			e.printStackTrace();
		}finally {	
			try {pstmt.close();}catch(Exception e) {e.printStackTrace();}
		}
	}
	
//	public static void main(String[] args) {
//		BookDTO dto = new BookDTO(0,10101010,"Title","Publisher",100,10);
//		BookDAO dao = BookDAO.getInstance();
//		dao.Post200(dto);
//	}
	
}
