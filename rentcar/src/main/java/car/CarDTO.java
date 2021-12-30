package car;

public class CarDTO {
	private String carCode;
	private String carName;
	private String imgPath;
	private int price;
	private boolean rent;
	
	public CarDTO(String carCode, String carName, String imgPath, int price, boolean rent) {
		this.carCode = carCode;
		this.carName = carName;
		this.imgPath = imgPath;
		this.price = price;
		this.rent = rent;
	}

	public String getCarCode() {
		return carCode;
	}

	public String getCarName() {
		return carName;
	}
	
	public String getImgPath() {
		return imgPath;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public boolean isRent() {
		return rent;
	}

	public void setRent(boolean rent) {
		this.rent = rent;
	}
	
	
}
