package DAO.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

//import org.eclipse.jdt.internal.compiler.batch.Main;

import DAO.IAdminHomeDAO;
import Model.Admin;
import Model.Book;
import Model.NXB;
import Model.User;
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

	@Override
	public Admin loginAdmin(String username, String pass) {
		Connection con = ConnectionUtil.getConnection();
		String query = "select * from admin where username = ? and password = ?";
		if(con != null) {
			try {
				PreparedStatement loginStatement = con.prepareStatement(query);
				loginStatement.setString(1, username);
				loginStatement.setString(2, pass);
				
				ResultSet result = loginStatement.executeQuery();
				Admin admin = new Admin();
				while (result.next()) {
					admin.setFullName(result.getString("fullname"));
					admin.setUsername(result.getString("username"));
					admin.setType(result.getInt("type"));
					if(con != null) con.close();
					if(loginStatement != null ) loginStatement.close();
					return admin;
				}
				return null;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public void insertBook(String avatar, String nameBook, double price, String id_category, String des, int quantity,
			String id_nxb, String id_author) {
		Connection con = ConnectionUtil.getConnection();
		String query = "insert into book values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ;
		if(con != null) {
			try {
				String _id = UUID.randomUUID().toString();
				PreparedStatement loginStatement = con.prepareStatement(query);
				loginStatement.setString(1, _id);
				loginStatement.setString(2, avatar);
				loginStatement.setString(3, nameBook);
				loginStatement.setDouble(4, price);
				loginStatement.setString(5, id_category);
				loginStatement.setString(6, des);
				loginStatement.setInt(7, quantity);
				loginStatement.setString(8, id_nxb);
				loginStatement.setString(9, id_author);
				loginStatement.setInt(10, 0);
				loginStatement.setDate(11,java.sql.Date.valueOf("2020-01-12"));
				System.out.println("Thanh cong");
				loginStatement.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

	@Override
	public List<NXB> listNxb() {
		Connection con = ConnectionUtil.getConnection();
		if( con != null) {
			List<NXB> listNxb = new ArrayList<NXB>();
			String query = "select * from nxb";
			try {
				PreparedStatement statement = con.prepareStatement(query);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					NXB nxbItem = new NXB();
					nxbItem.set_id(rs.getString("_id"));
					nxbItem.setName(rs.getString("nameNXB"));
					
					listNxb.add(nxbItem);
				}
				return listNxb;
			} catch (SQLException e) {
				e.printStackTrace();
				return null;
			}
		}
		return null;
	}
}
