package car;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBManager;

public class CarDAO {
	
	private ArrayList<CarDTO> cars = null;
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	
	private CarDAO() {}
	private static CarDAO instance = new CarDAO();
	public static CarDAO getInstance() {
		return instance;
	}
	
	public ArrayList<CarDTO> getCars(){
		try {
			con = DBManager.getConnection();
			
			pstmt = con.prepareStatement("Select* from car");
			
			rs = pstmt.executeQuery();
			
			cars = new ArrayList<CarDTO>();
			
			while(rs.next()) {
				
				String carCode = rs.getString(1);
				String carName = rs.getString(2);
				String imgPath = rs.getString(3);
				int price = rs.getInt(4);
				boolean rent = rs.getBoolean(5);

				CarDTO getData = new CarDTO(carCode, carName, imgPath, price, rent);
				
				cars.add(getData);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return cars;
	}
	
	
}
