package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBManager;


public class UserDAO {
	
	public static int log = -1;
	
	private ArrayList<UserDTO> users = null;
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	
	private UserDAO() {}
	private static UserDAO instance = new UserDAO();
	public static UserDAO getInstance() {
		return instance;
	}
	
	public ArrayList<UserDTO> getUsers(){
		try {
			con = DBManager.getConnection();
			
			pstmt = con.prepareStatement("Select* from `user`");
			
			rs = pstmt.executeQuery();
			
			users = new ArrayList<>();
			
			while(rs.next()) {
				String userCode = rs.getString(1);
				String userName = rs.getString(2);
				String pw = rs.getString(3);
				int age = rs.getInt(4);
				int rentCnt = rs.getInt(5);
				int totalPrice = rs.getInt(6);
				
				UserDTO getData = new UserDTO(userCode, userName, pw, age, rentCnt, totalPrice);
				
				users.add(getData);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return users;
	}
	

}
