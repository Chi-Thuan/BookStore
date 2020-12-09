package service.impl;

import java.util.List;

import DAO.ICategoryDAO;
import DAO.impl.CategoryDAO;
import Model.Category;
import service.IServiceCategory;

public class ServiceCategory implements IServiceCategory{
	private ICategoryDAO category;
	
	public ServiceCategory() {
		category = new CategoryDAO();
	}

	@Override
	public List<Category> getAllCategory() {
		return category.getAllCategory();
	}
}
