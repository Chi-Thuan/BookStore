package DAO.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DAO.ICartDAO;
import Model.CartItem;
import connectDB.ConnectionUtil;

public class CartDAO implements ICartDAO{

	@Override
	public CartItem findCart(String _id) {
		Connection con = ConnectionUtil.getConnection();
		if(con != null) {
			String query = "select _id, avatar, nameBook, price, quantity from book where _id = ?";
			try {
				PreparedStatement statement = con.prepareStatement(query);
				statement.setString(1, _id);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					String id_new = rs.getString("_id");
					String avatar_new = rs.getString("avatar");
					String name_new = rs.getString("nameBook");
					double price_new = rs.getDouble("price");
					int quantity_new = rs.getInt("quantity");
					CartItem cart = new CartItem(id_new, name_new, avatar_new, price_new, quantity_new );
					return cart;
				}
			} catch (SQLException e) {
				System.out.println("ERROR GET ITEM TO CART");
				e.printStackTrace();
				return null;
			}
			
		}
		return null;
	}
}
