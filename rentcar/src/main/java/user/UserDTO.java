package user;

public class UserDTO {
	String userCode;
	String userName;
	String pw;
	int age;
	int rentCnt;
	int totalPrice;
	
	// 신규 가입시 사용
	public UserDTO(String userCode, String userName, String pw, int age) {
		this.userCode = userCode;
		this.userName = userName;
		this.pw = pw;
		this.age = age;
	}
	
	// 데이터를 가져올 때 사용
	public UserDTO(String userCode, String userName, String pw, int age, int rentCnt, int totalPrice) {
		this.userCode = userCode;
		this.userName = userName;
		this.pw = pw;
		this.age = age;
		this.rentCnt = rentCnt;
		this.totalPrice = totalPrice;
	}

	public String getUserCode() {
		return userCode;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public String getPw() {
		return pw;
	}
	
	public void setPw(String pw) {
		this.pw = pw;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getRentCnt() {
		return rentCnt;
	}

	public void setRentCnt(int rentCnt) {
		this.rentCnt = rentCnt;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
}
