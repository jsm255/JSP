package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

public class UserDAO {
	
	// DAO(Data Access Object)
	// ㄴ 데이터베이스에 대한 접근 처리
	
	private UserDAO() {}
	private static UserDAO instance = new UserDAO();
	public static UserDAO getInstance() {
		return instance;
	}
	
	public static int log = -1;
	
	// 2. 데이터 베이스 연동 준비
	// 이 세개는 같이 다님
	private Connection conn = null;				// DB에 연결
	private PreparedStatement pstmt = null;		// sql쿼리를 execute해줌
	private ResultSet rs = null;				// 쿼리 실행 결과물을 받는 역할
	
	private ArrayList<UserDTO> users = null;
	
	// 3. DB 연동하기
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/loginServer?TimeZone=UTC";
			String user = "root";
			String password = "steamSM)2)7";
			conn = DriverManager.getConnection(url, user, password);
			
			if(conn != null)
				System.out.println("DB연동 성공!");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
	}
	
	// 4. 연동된 DB에서 데이터 불러오기
	public ArrayList<UserDTO> getUsers(){
		users = new ArrayList<UserDTO>();
		
		try {
			conn = getConnection(); // DB연동하기
			String sql = "select* from users";	// pstmt가 도와줄 것임
			pstmt = conn.prepareStatement(sql);	// 연동된 DB에 쿼리를 날릴 준비가 되었음!
			
			rs = pstmt.executeQuery();			// executeQuery()를 통해 결과값을 받음!
			
			while(rs.next()) {	// rs.next()는 다음 행이 있는지를 boolean 값으로 반환
				// !!!!!!!!!!!!!!!!sql은 인덱스가 1부터 시작이다!!!!!!!!
				int code = rs.getInt(1);
				String id = rs.getString(2);
				String pw = rs.getString(3);
				Timestamp regDate = rs.getTimestamp(4);
				
				UserDTO user = new UserDTO(code, id, pw, regDate);
				
				users.add(user);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return users;
	}
	
	// 5. CRUD
	// ㄴ Create Read Update Delete
	public void addUser(UserDTO user) {
		if(checkUser(user.getId())) {
			try {
				conn = getConnection();
				
				String sql = "insert into users(id, pw, regDate) values(?, ?, ?)";	// sql 쿼리의 포맷은 ?이다!
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user.getId());
				pstmt.setString(2, user.getPw());
				// timestamp중 long을 인자값으로 받는 메서드를 사용하여 캘린더가 지원하는 밀리초를 준다!
				pstmt.setTimestamp(3, new Timestamp(Calendar.getInstance().getTimeInMillis()));
				
				pstmt.executeUpdate();
				
				System.out.println("회원가입 성공!");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		else System.out.println("중복된 아이디입니다!");
	}
	
	private boolean checkUser(String id) {
		ArrayList<UserDTO> users = getUsers();
		for(UserDTO temp : users) {
			if(id.equals(temp.getId())) return false;
		}
		return true;
	}
	
	public boolean loginUser(UserDTO user) {
		try {
			conn = getConnection();
			
			ArrayList<UserDTO> users = getUsers();
			
			for(UserDTO temp : users) {
				if(user.getId().equals(temp.getId()) && user.getPw().equals(temp.getPw())) {
					log = temp.getCode() - 1;	// mysql 인덱스는 java보다 1이 크다
					System.out.println("로그인 성공!");
					return true;
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;
	}
	
	public void logout() {
		log = -1;
	}
	
}
