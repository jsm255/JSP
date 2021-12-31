package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import util.DBManager;

public class BoardDAO {
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private ArrayList<BoardDTO> board = null;
	
	private static BoardDAO instance = new BoardDAO();
	private BoardDAO (){};
	public static BoardDAO getInstance() {
		return instance;
	}
	
	public ArrayList<BoardDTO> getBoard(){
		try {
			con = DBManager.getConnection();
			
			pstmt = con.prepareStatement("Select* from board");
			
			rs = pstmt.executeQuery();
			
			board = new ArrayList<>();
			
			while(rs.next()) {
				int num = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String id = rs.getString(4);
				String pw = rs.getString(5);
				int view = rs.getInt(6);
				int like = rs.getInt(7);
				Timestamp time = rs.getTimestamp(8);
				
				BoardDTO getter = new BoardDTO(num, title, content, id, pw, view, like, time);
				
				board.add(getter);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return board;
	}
	
	public BoardDTO getArticle(int articleNum) {
		BoardDTO getter = null;
		try {
			con = DBManager.getConnection();
			
			pstmt = con.prepareStatement("Select* from board where num=?");
			pstmt.setInt(1, articleNum);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				int num = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String id = rs.getString(4);
				String pw = rs.getString(5);
				int view = rs.getInt(6);
				int like = rs.getInt(7);
				Timestamp time = rs.getTimestamp(8);
				
				getter = new BoardDTO(num, title, content, id, pw, view, like, time);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return getter;
	}
	
	public boolean writeArticle(BoardDTO article) {
		try {
			con = DBManager.getConnection();
			
			pstmt = con.prepareStatement("insert board(title, content, id, pw) values(?, ?, ?, ?)");
			pstmt.setString(1, article.getTitle());
			pstmt.setString(2, article.getContent());
			pstmt.setString(3, article.getId());
			pstmt.setString(4, article.getPw());
			
			pstmt.executeUpdate();
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
