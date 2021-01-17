package DAO.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//import org.eclipse.jdt.internal.compiler.batch.Main;

import DAO.IAdminHomeDAO;
import Model.Book;
import connectDB.ConnectionUtil;

public class AdminHomeDAO implements IAdminHomeDAO{

	@Override
	public List<Book> getAllBook() {
		Connection con = ConnectionUtil.getConnection();
		if( con != null) {
			List<Book> listBook = new ArrayList<Book>();
			String query = "select b._id, b.avatar, b.nameBook, b.price, cate.nameCategory, b.description, b.quantity, t_nxb.nameNXB, auth.nameAuthor, b.countBuy, b.createAt from\r\n" + 
					"book b JOIN category cate ON b.id_category = cate._id\r\n" + 
					"JOIN author auth ON b.id_author = auth._id\r\n" + 
					"JOIN nxb t_nxb ON b.id_nxb = t_nxb._id\r\n" + 
					"";
			try {
				PreparedStatement statement = con.prepareStatement(query);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					Book bookItem = new Book();
					bookItem.set_id(rs.getString("_id"));
					bookItem.setAvatar(rs.getString("avatar"));
					bookItem.setNameBook(rs.getString("nameBook"));
					bookItem.setPrice(rs.getDouble("price"));
					bookItem.setNameCategory(rs.getString("nameCategory"));
					bookItem.setDescription(rs.getString("description"));
					bookItem.setQuantity(rs.getInt("quantity"));
					bookItem.setNxb(rs.getString("nameNXB"));
					bookItem.setAuthor(rs.getString("nameAuthor"));
					bookItem.setCountBuy(rs.getInt("countBuy"));
					bookItem.setCreateAt(rs.getDate("createAt"));
					
					listBook.add(bookItem);
				}
				
				return listBook;
				
			} catch (SQLException e) {
				System.out.println("ERROR GET ALL BOOK ADMIN !!!");
				e.printStackTrace();
				return null;
			}
		}
		return null;
	}
}
