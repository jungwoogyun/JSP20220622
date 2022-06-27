package Ch05;

public class MemberBean {
	private String email;
	private String pwd;
	private String addr1;
	private String addr2;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	@Override
	public String toString() {
		return "MemberBean [email=" + email + ", pwd=" + pwd + ", addr1=" + addr1 + ", addr2=" + addr2 + "]";
	}
	
	
}
