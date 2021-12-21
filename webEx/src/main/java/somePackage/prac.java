package somePackage;

import java.sql.Connection;

public class prac {
	
	// DAO Data Access Object
	
	// 싱글턴
	private prac() {}
	private static prac instance = new prac();
	public static prac getInstance() {
		return instance;
	}
	
	// 데이터 연동 준비
	// 세 개
	private Connection con = null;			// DB에 연결
	private PreparedStatement pstmt = null;	// sql쿼리를 excute
	private ResultSet rs = null;			// 쿼리 실행 결과물을 받아옴
}
