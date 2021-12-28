package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
	
	private DBManager() {}
	
	public static Connection getConnection() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// jdbc:mysql://localhost:3306/?user=root 가 기본값인데, 스키마를 특정시켜줘야함!
			String url = "jdbc:mysql://localhost:3306/loginServer?serverTimeZone=UTC";
			String id = "root";
			String pw = "root";
			con = DriverManager.getConnection(url, id, pw);
			
			if(con != null) {
				System.out.println("DB연동성공!");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
