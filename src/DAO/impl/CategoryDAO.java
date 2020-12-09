package DAO.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DAO.ICategoryDAO;
import Model.Category;
import connectDB.ConnectionUtil;

public class CategoryDAO implements ICategoryDAO{

	@Override
	public List<Category> getAllCategory() {
		String query = "SELECT * FROM category";
		Connection con = ConnectionUtil.getConnection();
		if(con != null) {
			try {
				List<Category> listCategory = new ArrayList<Category>();
				PreparedStatement statement = con.prepareStatement(query);
				ResultSet result = statement.executeQuery();
				while (result.next()) {
					listCategory.add(new Category(result.getString("_id"),result.getString("name"), result.getString("slug")));
				}
				if(con != null) con.close();
				if(statement != null ) statement.close();
				if(result != null) result.close();
				return listCategory;
			} catch (SQLException e) {
				e.printStackTrace();
				return null;
			}
		}
		return null;
	}
	
	public static void main(String[] args) {
		ICategoryDAO test = new CategoryDAO();
		for (Category item : test.getAllCategory()) {
			System.out.println(item.get_id() + "\t" +item.getName()+"\t"+item.getSlug());
		}
	}
	
}
