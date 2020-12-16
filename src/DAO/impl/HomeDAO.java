package DAO.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DAO.IHomeDAO;
import Model.Book;
import connectDB.ConnectionUtil;

public class HomeDAO implements IHomeDAO{

	@Override
	public List<Book> getListHotBook() {
		Connection con = ConnectionUtil.getConnection();
		if(con != null) {
			String query = "select b._id, b.avatar, b.nameBook, b.price, cate.nameCategory, b.description, b.quantity, t_nxb.nameNXB, auth.nameAuthor, b.countBuy, b.createAt from\r\n" + 
					"book b JOIN category cate ON b.id_category = cate._id\r\n" + 
					"JOIN author auth ON b.id_author = auth._id\r\n" + 
					"JOIN nxb t_nxb ON b.id_nxb = t_nxb._id";
			
			List<Book> listBook = new ArrayList<Book>();
			try {
				PreparedStatement statment = con.prepareStatement(query);
				ResultSet rs = statment.executeQuery();
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
//					System.out.println(bookItem.get_id());
//					System.out.println(bookItem.getAvatar());
//					System.out.println(bookItem.getNameBook());
//					System.out.println(bookItem.getPrice());
//					System.out.println(bookItem.getNameCategory());
//					System.out.println(bookItem.getDescription());
//					System.out.println(bookItem.getQuantity());
//					System.out.println(bookItem.getNxb());
//					System.out.println(bookItem.getAuthor());
//					System.out.println(bookItem.getCountBuy());
//					System.out.println(bookItem.getCreateAt());
				}
				if(con != null ) {con.close();}
				if(statment != null) {statment.close();}
				if(rs != null) {rs.close();}
				return listBook;
			} catch (SQLException e) {
				System.out.println("GET HOT BOOK IS ERROR !!!");
				e.printStackTrace();
				return null;
			}  
		}
		return null;	
	}
	
	public static void main(String[] args) {
		IHomeDAO home = new HomeDAO();
		home.getListHotBook();
	}
	
}
