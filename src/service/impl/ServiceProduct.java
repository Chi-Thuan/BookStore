package service.impl;

import java.util.List;

import DAO.IProductDAO;
import DAO.impl.ProductDAO;
import Model.Book;
import service.IServiceProduct;

public class ServiceProduct implements IServiceProduct{
	private IProductDAO product;
	
	public ServiceProduct() {
		product = new ProductDAO();
	}
	
	@Override
	public Book getBookById(String _id) {
		return product.getBookById(_id);
	}

	@Override
	public List<Book> getAllBook() {
		return product.getAllBook();
	}

	@Override
	public List<Book> getBookByCategory(String slug) {
		return product.getBookByCategory(slug);
	}

}