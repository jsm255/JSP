package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
	
	/*
	 * 할 일	- CSS는 나중에 하자
	 * 1. 유저 테이블	+ 더미
	 * 2. 차 테이블	+ 더미
	 * 
	 * 3. 차 기능		- 끝
	 * 	3-1. 차 리스트 보여주기(사진, 이름, 가격)	----> 렌트가 완료된 차는 보여주지 않는다
	 * 	3-2. 차 선택시 해당 차량 렌트 화면으로 리다이렉트
	 * 	3-3. 렌트 화면에서는 차량의 정보, 렌트 기간, 기간에 따른 가격 등을 볼 수 있음
	 * 	3-4. 렌트를 끝내면 유저의 계약 건수, 소비 금액이 갱신, 렌트된 차는 렌트가 완료된 것으로 표시
	 * 
	 * 	추가1. 렌트 화면 기간 설정 화면에서 확정을 했을 때 로그인이 되어있지 않으면 로그인 화면으로 이동
	 *  추가2. 렌트 설정화면에서 다른 곳으로 나왔을때 세션값때문에 차가 고정되어버리는 문제가 있음
	 * 
	 * 4. 유저 기능
	 * 	4-1. 자신의 id와 pw를 입력해서 로그인		- 끝
	 * 	4-2. 마이페이지에서 본인이 렌트 계약을 했는지, 했다면 어떤 차를 렌트해놨는지, 
	 */
	
	private DBManager() {}
	
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/rentcar?serverTimeZone=UTC";
			String id = "root";
			String pw = "root";
			con = DriverManager.getConnection(url, id, pw);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	
	
}
