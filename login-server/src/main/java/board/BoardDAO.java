package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import util.DBManager;

public class BoardDAO {
	
	private BoardDAO() {}
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private ArrayList<BoardDTO> board = null;
	private BoardDTO article = null;
	
	// UserData는 UserDAO가 불러온다
	
	public ArrayList<BoardDTO> getBoard(){
		board = new ArrayList<>();
		
		try {
			con = DBManager.getConnection();	// DB 연동
			String sql = "select* from board";	// pstmt에 태워서 보낼 쿼리문
			pstmt = con.prepareStatement(sql);	// 태웠음
			
			rs = pstmt.executeQuery();			// 날려보낸 쿼리문에 대한 결과값을 리턴 받음
			
			while(rs.next()) {	// rs.next()로 다음 행이 있는지 판별
				int code = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String id = rs.getString(4);
				String pw = rs.getString(5);
				int view = rs.getInt(6);
				int like = rs.getInt(7);
				Timestamp date = rs.getTimestamp(8);
				
				BoardDTO temp = new BoardDTO(code, title, content, id, pw, view, like, date);
				
				board.add(temp);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return board;
	}
	
	public BoardDTO getArticle(int inputCode) {
		try {
			con = DBManager.getConnection();
			String sql = "select* from board where code=" + inputCode;
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				int code = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String id = rs.getString(4);
				String pw = rs.getString(5);
				int view = rs.getInt(6);
				int like = rs.getInt(7);
				Timestamp date = rs.getTimestamp(8);
				
				article = new BoardDTO(code, title, content, id, pw, view, like, date);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return article;
	}
	
	public boolean writeArticle(BoardDTO article) {
		try {
			con = DBManager.getConnection();
			String sql = "insert board(title, content, id, password) values(?,?,?,?)"; //sql 쿼리의 포맷!
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, article.getTitle());
			pstmt.setString(2, article.getContent());
			pstmt.setString(3, article.getId());
			pstmt.setString(4, article.getPassword());
			
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean deleteArticle(int inputCode) {
		try {
			getArticle(inputCode);
			con = DBManager.getConnection();
			String sql = String.format("delete from board where code=%d", inputCode);
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean updateArticle(BoardDTO article, int inputCode) {
		try {
			con = DBManager.getConnection();
			String sql = "update board set title=?, content=?, id=?, password=? where code=?"; //sql 쿼리의 포맷!
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, article.getTitle());
			pstmt.setString(2, article.getContent());
			pstmt.setString(3, article.getId());
			pstmt.setString(4, article.getPassword());
			pstmt.setInt(5, inputCode);
			
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	
	public void setDummies() {
		if(board == null || board.size() == 0) {
			try {
				con = DBManager.getConnection();
				
				for(int i = 0; i<11; i++) {
					char ch = (char)(97+i);
					System.out.println(ch);
					String title = "대충 그럴듯한 제목 ";
					String content = "대충 아이디와 비밀번호가 같다는 내용";
					String id = "";
					id += String.valueOf(ch) + String.valueOf(ch) + String.valueOf(ch) + String.valueOf(ch);
					
					pstmt = con.prepareStatement("insert board(title, content, id, password) values(?, ?, ?, ?)");
					pstmt.setString(1, String.format(title+"%d", (i+1)));
					pstmt.setString(2, content);
					pstmt.setString(3, id);
					pstmt.setString(4, id);
					
					pstmt.executeUpdate();
				}
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
}
