package Ch07;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

public class SessionSave {
	//로그인 처리시 Userid:Session주소를 저장하기 위한 컬렉션	
	public Map<String,HttpSession> slist=new HashMap();
	
	//로그인 처리시 해당 계정Id:session객체주소를 저장하기 위한 함수
	public void AddSession(String id,HttpSession session) {
		slist.put(id, session);
		System.out.println("총Session : " +slist.size() +" ID : "+id+" Session : " + session);
		
	}
	//총 세션정보를 전달하기 위한 함수
	public Map<String,HttpSession> GetSession() {
		return slist;
	}
	
}
