package service;

import java.util.List;

import Model.Book;

public interface IServiceProduct {
	Book getBookById(String _id);
	List<Book> getAllBook();
}
