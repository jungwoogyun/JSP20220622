package Ch09;

public class BookDTO {
	private int no;
	private int bookcode;
	private String bookname;
	private String publisher;
	private int totalpage;
	private int amount;
	public BookDTO() {};
	//	Getter And Setter , ToString 만들기 ,모든필드 생성자 추가
	public BookDTO(int no, int bookcode, String bookname, String publisher, int totalpage, int amount) {
		super();
		this.no = no;
		this.bookcode = bookcode;
		this.bookname = bookname;
		this.publisher = publisher;
		this.totalpage = totalpage;
		this.amount = amount;
	}
	public int getNo() {
		return no;
	}
	
	@Override
	public String toString() {
		return "BookDTO [no=" + no + ", bookcode=" + bookcode + ", bookname=" + bookname + ", publisher=" + publisher
				+ ", totalpage=" + totalpage + ", amount=" + amount + "]";
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getBookcode() {
		return bookcode;
	}
	public void setBookcode(int bookcode) {
		this.bookcode = bookcode;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public int getTotalpage() {
		return totalpage;
	}
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
}
