package Model;

public class CartItem {
	private String _id;
	private String nameBook;
	private String avatar;
	private double price;
	private int quantity;
	private int quantityDatabse;
	
	public CartItem () {};
	
	public CartItem(String _id, String nameBook, String avatar, double price, int quantityDatabse) {
		super();
		this._id = _id;
		this.nameBook = nameBook;
		this.avatar = avatar;
		this.price = price;
		this.quantity = 1; // mac dinh khi add la 1
		this.quantityDatabse = quantityDatabse;
	}

	public int getQuantityDatabse() {
		return quantityDatabse;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String get_id() {
		return _id;
	}

	public String getNameBook() {
		return nameBook;
	}

	public String getAvatar() {
		return avatar;
	}

	public double getPrice() {
		return price;
	}
}
