package controller;

import java.io.IOException;
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
		String next_page = "/jsp/user/product/index.jsp";
		String title_page = "Tất Cả Sản Phẩm";
		if(id_param != null ) {
			next_page = "/jsp/user/product/details.jsp";
			product = new ServiceProduct();
			Book bookDetails = product.getBookById(id_param);
			title_page = "Sách "+bookDetails.getNameBook();
			request.setAttribute("bookDetails", bookDetails);
		}else {
			category = new ServiceCategory();
			product = new ServiceProduct();
			List<Category> listCategory = category.getAllCategory();
			List<Book> listAllBook = product.getAllBook();
			request.setAttribute("listCategory", listCategory);
			request.setAttribute("listAllBook", listAllBook);
		}
		request.setAttribute("titlePage", title_page);
		request.setAttribute("menuActive","tatcasanpham" );
		getServletContext().getRequestDispatcher(next_page).forward(request, response);
	}
}
