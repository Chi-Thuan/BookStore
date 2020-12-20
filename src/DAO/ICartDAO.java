package DAO;

import Model.CartItem;

public interface ICartDAO {
	CartItem findCart(String _id);
}