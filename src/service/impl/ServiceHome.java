package service.impl;

import java.util.List;

import DAO.IHomeDAO;
import DAO.impl.HomeDAO;
import Model.Book;
import service.IServiceHome;

public class ServiceHome implements IServiceHome{
	private IHomeDAO home;
	
	public ServiceHome() {
		home = new HomeDAO();
	}
	
	@Override
	public List<Book> getListHotBook() {
		return home.getListHotBook();
	}

}
