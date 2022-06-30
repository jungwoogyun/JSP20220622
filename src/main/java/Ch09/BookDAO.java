package Ch09;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
