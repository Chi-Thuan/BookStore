package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Book;
import Model.Category;
import service.IServiceCategory;
import service.IServiceProduct;
import service.impl.ServiceCategory;
import service.impl.ServiceProduct;

/**
 * Servlet implementation class Product
 */
@WebServlet("/Product")
public class ProductController extends HttpServlet {

	private IServiceCategory category;
	private IServiceProduct product;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id_param = request.getParameter("id");
		String slug_category = request.getParameter("category");
		String next_page = "/jsp/user/product/index.jsp";
		String title_page = "Tất Cả Sản Phẩm";
		// để render ajax tất cả sản phẩm
		String typepage = "allproduct";
		
		if(id_param != null ) {
			next_page = "/jsp/user/product/details.jsp";
			product = new ServiceProduct();
			Book bookDetails = product.getBookById(id_param);
			title_page = "Sách "+bookDetails.getNameBook();
			request.setAttribute("bookDetails", bookDetails);
		}else if(slug_category != null){
			typepage = slug_category;
			category = new ServiceCategory();
			product = new ServiceProduct();
			List<Category> listCategory = category.getAllCategory();
			List<Book> listBookCategory;
			if(product.getBookByCategory(slug_category).size() > 6) {
				listBookCategory = new ArrayList<Book>(6);
				for (int i = 0; i < 6; i++) {
					listBookCategory.add(product.getBookByCategory(slug_category).get(i));
				}
				if(product.getBookByCategory(slug_category).size() > 6 ) {
					int totalPagination = 0;
					if(product.getBookByCategory(slug_category).size() % 6 == 0) {
						totalPagination = product.getBookByCategory(slug_category).size() / 6;
					}else {
						totalPagination = (product.getBookByCategory(slug_category).size()/6) + 1;
					}
					// arr list index pagiantion
					request.setAttribute("totalPagination", ""+totalPagination);
				}
			}else {
				listBookCategory = product.getBookByCategory(slug_category);
			}
			request.setAttribute("listCategory", listCategory);
			request.setAttribute("listAllBook", listBookCategory);
		}else{
			category = new ServiceCategory();
			product = new ServiceProduct();
			List<Category> listCategory = category.getAllCategory();
			List<Book> listAllBook;
			if(product.getAllBook().size() > 6) {
				listAllBook = new ArrayList<Book>(6);
				for (int i = 0; i < 6; i++) {
					listAllBook.add(product.getAllBook().get(i));
				}
				int totalPagination = 0 ;
				if(product.getAllBook().size() % 6 == 0) {
					totalPagination = product.getAllBook().size() / 6;
				}else {
					totalPagination = (product.getAllBook().size()/6) + 1;
				}
				request.setAttribute("totalPagination", ""+totalPagination );
			}else {
				 listAllBook = product.getAllBook();
			}
			request.setAttribute("listCategory", listCategory);
			request.setAttribute("listAllBook", listAllBook);
		}
		request.setAttribute("titlePage", title_page);
		request.setAttribute("menuActive","tatcasanpham" );
		request.setAttribute("typepage", typepage );
		getServletContext().getRequestDispatcher(next_page).forward(request, response);
	}
}
