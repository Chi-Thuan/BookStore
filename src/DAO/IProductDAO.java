package DAO;

import java.util.List;

import Model.Book;

public interface IProductDAO {
	Book getBookById(String _id);
	List<Book> getAllBook();
	List<Book> getBookByCategory(String slug);
}
