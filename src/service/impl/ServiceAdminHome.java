package service.impl;

import java.util.List;

import DAO.IAdminHomeDAO;
import DAO.impl.AdminHomeDAO;
import Model.Book;
import service.IServiceAdminHome;

public class ServiceAdminHome implements IServiceAdminHome{
	private IAdminHomeDAO adminHome;
	
	public ServiceAdminHome() {
		adminHome = new AdminHomeDAO();
	}

	@Override
	public List<Book> getAllBook() {
		return adminHome.getAllBook();
	}
}
