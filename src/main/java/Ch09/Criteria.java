package Ch09;

public class Criteria {
	private String type ;	//검색타입 C , N , P
	private int end;		//끝번호
	
	public Criteria(){
		end=100;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	@Override
	public String toString() {
		return "Criteria [type=" + type + ", end=" + end + "]";
	}
	
	//Getter and Setter , ToString() 
	
}
