package service.impl;

import java.util.List;

import DAO.IAdminHomeDAO;
import DAO.impl.AdminHomeDAO;
import Model.Admin;
import Model.Book;
import Model.NXB;
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

	@Override
	public Admin loginAdmin(String username, String pass) {
		return adminHome.loginAdmin(username, pass);
	}

	@Override
	public void insertBook(String avatar, String nameBook, double price, String id_category, String des, int quantity,
			String id_nxb, String id_author) {
		adminHome.insertBook(avatar, nameBook, price, id_category, des, quantity, id_nxb, id_author);
		
	}

	@Override
	public List<NXB> listNxb() {
		// TODO Auto-generated method stub
		return adminHome.listNxb();
	}
}
