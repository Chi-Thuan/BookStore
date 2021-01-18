package DAO;

import java.util.List;

import Model.Admin;
import Model.Book;

public interface IAdminHomeDAO {
	List<Book> getAllBook();
	Admin loginAdmin(String username, String pass);
}
