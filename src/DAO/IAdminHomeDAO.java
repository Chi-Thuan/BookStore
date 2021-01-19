package DAO;

import java.util.List;

import Model.Admin;
import Model.Book;
import Model.NXB;

public interface IAdminHomeDAO {
	List<Book> getAllBook();
	Admin loginAdmin(String username, String pass);
	void insertBook(String avatar, String nameBook, double price, String id_category, String des, int quantity, String id_nxb, String id_author );
	List<NXB> listNxb();
}
