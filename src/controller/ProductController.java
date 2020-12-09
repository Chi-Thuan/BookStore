package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Category;
import service.IServiceCategory;
import service.impl.ServiceCategory;

/**
 * Servlet implementation class Product
 */
@WebServlet("/Product")
public class ProductController extends HttpServlet {

	private IServiceCategory category;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("titlePage", "Tất Cả Sản Phẩm");
		request.setAttribute("menuActive","tatcasanpham" );
		
		category = new ServiceCategory();
		List<Category> listCategory = category.getAllCategory();
		request.setAttribute("listCategory", listCategory);
		getServletContext().getRequestDispatcher("/jsp/user/product/index.jsp").forward(request, response);
	}
}
