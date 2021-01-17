package DAO.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DAO.IProductDAO;
import Model.Book;
import connectDB.ConnectionUtil;

public class ProductDAO implements IProductDAO{

	@Override
	public Book getBookById(String _id) {
		Connection con = ConnectionUtil.getConnection();
		if(con != null) {
			String query = "select b._id, b.avatar, b.nameBook, b.price, cate.nameCategory, b.description, b.quantity, t_nxb.nameNXB, auth.nameAuthor, b.countBuy, b.createAt from\r\n" + 
					"book b JOIN category cate ON b.id_category = cate._id\r\n" + 
					"JOIN author auth ON b.id_author = auth._id\r\n" + 
					"JOIN nxb t_nxb ON b.id_nxb = t_nxb._id\r\n" + 
					"where b._id = ? ";
			try {
				Book book = new Book();
				PreparedStatement statement = con.prepareStatement(query);
				statement.setString(1, _id);
				ResultSet rs = statement.executeQuery();
				while(rs.next()) {
					book.set_id(rs.getString("_id"));
					book.setAvatar(rs.getString("avatar"));
					book.setNameBook(rs.getString("nameBook"));
					book.setPrice(rs.getDouble("price"));
					book.setNameCategory(rs.getString("nameCategory"));
					book.setDescription(rs.getString("description"));
					book.setQuantity(rs.getInt("quantity"));
					book.setNxb("nameNXB");
					book.setAuthor(rs.getString("nameAuthor"));
					book.setCountBuy(rs.getInt("countBuy"));
					book.setCreateAt(rs.getDate("createAt"));
				}
				return book;
			} catch (SQLException e) {
				System.out.println("ERROR GET PRODUCT DETAILS !!!");
				e.printStackTrace();
				return null;
			}
		}
		return null;
	}

	@Override
	public List<Book> getAllBook() {
		Connection con = ConnectionUtil.getConnection();
		ArrayList<Book> result = new ArrayList<Book>();
		if(con != null) {
			String query = "select b._id, b.avatar, b.nameBook, b.price, cate.nameCategory, b.description, b.quantity, t_nxb.nameNXB, auth.nameAuthor, b.countBuy, b.createAt from\r\n" + 
					"book b JOIN category cate ON b.id_category = cate._id\r\n" + 
					"JOIN author auth ON b.id_author = auth._id\r\n" + 
					"JOIN nxb t_nxb ON b.id_nxb = t_nxb._id";
			try {
				Book book = new Book();
				PreparedStatement statement = con.prepareStatement(query);
				ResultSet rs = statement.executeQuery();
				while(rs.next()) {
					Book bookItem = new Book();
					bookItem.set_id(rs.getString("_id"));
					bookItem.setAvatar(rs.getString("avatar"));
					bookItem.setNameBook(rs.getString("nameBook"));
					bookItem.setPrice(rs.getDouble("price"));
					bookItem.setNameCategory(rs.getString("nameCategory"));
					bookItem.setDescription(rs.getString("description"));
					bookItem.setQuantity(rs.getInt("quantity"));
					bookItem.setNxb("nameNXB");
					bookItem.setAuthor(rs.getString("nameAuthor"));
					bookItem.setCountBuy(rs.getInt("countBuy"));
					bookItem.setCreateAt(rs.getDate("createAt"));
					result.add(bookItem);
				}
				return result;
			} catch (SQLException e) {
				System.out.println("ERROR GET PRODUCT DETAILS !!!");
				e.printStackTrace();
				return null;
			}
		}
		return null;
	}
	
}

