package kapil.project.model;

public class Products {
	
	private int id1;
	private String name1;
	private String category1;
	private String price1;
	private String image1;
	
	
	public Products() {
		
	}


	public Products(int id1, String name1, String category1, String price1, String image1) {
		super();
		this.id1 = id1;
		this.name1 = name1;
		this.category1 = category1;
		this.price1 = price1;
		this.image1 = image1;
	}


	public int getId1() {
		return id1;
	}


	public void setId1(int id1) {
		this.id1 = id1;
	}


	public String getName1() {
		return name1;
	}


	public void setName1(String name1) {
		this.name1 = name1;
	}


	public String getCategory1() {
		return category1;
	}


	public void setCategory1(String category1) {
		this.category1 = category1;
	}


	public String getPrice1() {
		return price1;
	}


	public void setPrice1(String price1) {
		this.price1 = price1;
	}


	public String getImage1() {
		return image1;
	}


	public void setImage1(String image1) {
		this.image1 = image1;
	}


	@Override
	public String toString() {
		return "Products [id1=" + id1 + ", name1=" + name1 + ", category1=" + category1 + ", price1=" + price1
				+ ", image1=" + image1 + "]";
	}
	
	
	
	

}
