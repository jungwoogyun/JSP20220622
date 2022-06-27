package Ch05;

public class BookBean {
	private String bookcode;
	private String bookname;
	private String bookprice;
	//Getter and Setter
	public String getBookcode() {
		return bookcode;
	}
	public void setBookcode(String bookcode) {
		this.bookcode = bookcode;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getBookprice() {
		return bookprice;
	}
	public void setBookprice(String bookprice) {
		this.bookprice = bookprice;
	}
	@Override
	public String toString() {
		return "BookBean [bookcode=" + bookcode + ", bookname=" + bookname + ", bookprice=" + bookprice + "]";
	}
	
	
}
