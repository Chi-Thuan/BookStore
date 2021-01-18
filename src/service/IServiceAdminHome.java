package service;

import java.util.List;

import Model.Admin;
import Model.Book;

public interface IServiceAdminHome {
	List<Book> getAllBook();
	Admin loginAdmin(String username, String pass);
}
