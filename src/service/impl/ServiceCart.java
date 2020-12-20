package service.impl;

import DAO.ICartDAO;
import DAO.impl.CartDAO;
import Model.CartItem;
import service.IServiceCart;

public class ServiceCart implements IServiceCart{
	private ICartDAO cart;
	
	public ServiceCart() {
		cart = new CartDAO();
	}
	
	@Override
	public CartItem findCart(String _id) {
		return cart.findCart(_id);
	}
	
}
