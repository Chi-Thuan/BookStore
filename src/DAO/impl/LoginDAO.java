package DAO.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

import DAO.ILoginDAO;
import Model.User;
import connectDB.ConnectionUtil;

public class LoginDAO implements ILoginDAO{

	@Override
	public void registerUser(User user) {
		Connection con = ConnectionUtil.getConnection();
		String query = "INSERT INTO users values( ? , ? , ? , ? , ?)";
		if(con != null) {
			try {
				PreparedStatement register = con.prepareStatement(query);
				// random ID
				String _id = UUID.randomUUID().toString();
				register.setString(1, _id );
				register.setString(2, user.getFullname() );
				register.setString(3, user.getEmail() );
				register.setString(4, user.getPhone());
				register.setString(5, user.getPassword());
				
				register.executeUpdate();
				System.out.println("INSERT USER SUCCESS !!!");
				if(con != null) con.close();
				if(register != null ) register.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	

	@Override
	public boolean isExistEmail(String email) {
		Connection con = ConnectionUtil.getConnection();
		String query = "select _id from users where email = ? ";
		try {
			PreparedStatement checkStatment = con.prepareStatement(query);
			checkStatment.setString(1, email);
			ResultSet result = checkStatment.executeQuery();
			while (result.next()) {
				if(con != null) con.close();
				if(checkStatment != null ) checkStatment.close();
				return false;
			}
			if(con != null) con.close();
			if(checkStatment != null ) checkStatment.close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}


	@Override
	public User loginUser(String email, String password) {
		Connection con = ConnectionUtil.getConnection();
		String query = "select * from users where email = ? and password = ?";
		if(con != null) {
			try {
				PreparedStatement loginStatement = con.prepareStatement(query);
				loginStatement.setString(1, email);
				loginStatement.setString(2, password);
				
				ResultSet result = loginStatement.executeQuery();
				User user = new User();
				while (result.next()) {
					
					user.setFullname(result.getString("fullname"));
					user.setEmail(result.getString("email"));
					user.setPhone(result.getString("phone"));
					
					if(con != null) con.close();
					if(loginStatement != null ) loginStatement.close();
					return user;
				}
				
				return null;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
}