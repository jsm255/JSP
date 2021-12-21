package user;

import java.sql.Timestamp;

public class UserDTO {
	
	// 다 같은 객체, 데이터 단위임!
	// Data Transfer Object = 자바에서는 Bean 이라고도 함! = VO (Value Object, read only) = Entity Object = 	POJO
	
	// 캡슐화
	private int code;
	private String id, pw;
	// Timestamp는 자바에서도 지원을 함! java.sql 에서 불러오면됨!
	private Timestamp regDate;
	
	// 자바 안에서는 code를 생성하지는 않겠지만 필요는 하다.
	public UserDTO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}
	public UserDTO(int code, String id, String pw, Timestamp regDate) {
		this.code = code;
		this.id = id;
		this.pw = pw;
		this.regDate = regDate;
	}
	public int getCode() {
		return code;
	}
	public String getId() {
		return id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	
	@Override
	public String toString() {
		return String.format("%d) %s/%s (%s)", this.code, this.id, this.pw, this.regDate);
	}
}
