package Ch07;

public class ProductDTO {
	private String prodname;
	private String cat;
	private String price;
	//Getter and Setter
	//toString()
	public String getProdname() {
		return prodname;
	}
	public void setProdname(String prodname) {
		this.prodname = prodname;
	}
	public String getCat() {
		return cat;
	}
	public void setCat(String cat) {
		this.cat = cat;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "ProductDTO [prodname=" + prodname + ", cat=" + cat + ", price=" + price + "]";
	}
	
}
