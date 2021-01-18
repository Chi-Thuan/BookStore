package beans;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import Model.CartItem;

public class CartSession {
	private List<CartItem> cart = new ArrayList<CartItem>();

	public CartSession() {
	}
	
	public void add(CartItem b) {
		int indexCart = findIndex(b.get_id());
		if(indexCart != -1) {
			cart.get(indexCart).setQuantity(cart.get(indexCart).getQuantity() + 1);
		}else {
			this.cart.add(b);
			System.out.println("ADD ITEM ID "+ b.get_id());
		}
	}
	
	public void remove_one(CartItem b) {
		int indexCart = findIndex(b.get_id());
		cart.get(indexCart).setQuantity(cart.get(indexCart).getQuantity() - 1);
		if(cart.get(indexCart).getQuantity() == 0) {
			cart.remove(indexCart);
		}
	}
	
	public void remove(CartItem b) {
		int indexCart = findIndex(b.get_id());
		System.out.println("REMOVE ITEM ID "+ b.get_id());
		cart.remove(indexCart);
	}

	public List<CartItem> getCart() {
		return cart;
	}

	public void setCart(List<CartItem> cart) {
		this.cart = cart;
	}
	
	public int findIndex(String _id) {
		
		for (int i = 0; i < this.cart.size(); i++) {
			if(this.cart.get(i).get_id().equals(_id)) {
				return i;
			}
		}
		
		return -1;
//		for (CartItem cartItem : this.cart) {
//			if(cartItem.get_id().equals(_id)) {
//				return cartItem;
//			}
//		}
//		return null;
	}
	
	public double get_total() {
		double rs = 0;
		for (CartItem c : cart) {
			rs += c.getPrice() * c.getQuantity();
		}
		return rs;
	}
}
