package ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import DAO.IProductDAO;
import DAO.impl.ProductDAO;
import Model.Book;

/**
 * Servlet implementation class page
 */
@WebServlet("/page")
public class page extends HttpServlet {
	
	private IProductDAO product;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String typepage = request.getParameter("typepage");
		int currentProduct = Integer.parseInt(request.getParameter("current"));
		int maxRender = currentProduct + 6 ; // render 6 sp
		
		product = new ProductDAO();
		List<Book> listBook;
		List<Book> rs = new ArrayList<Book>();
		if(typepage.equalsIgnoreCase("allproduct")) {
			listBook = product.getAllBook();
			if(maxRender <= listBook.size()) {
				for (int i = currentProduct; i < maxRender; i++) {
					rs.add(listBook.get(i));
				}
			}else {
				// trang cuoi
				for (int i = currentProduct; i < listBook.size(); i++) {
					rs.add(listBook.get(i));
				}
			}
		}else{
			listBook = product.getBookByCategory(typepage);
			if(maxRender <= listBook.size()) {
				for (int i = currentProduct; i < maxRender; i++) {
					rs.add(listBook.get(i));
				}
			}else {
				for (int i = currentProduct; i < listBook.size(); i++) {
					rs.add(listBook.get(i));
				}
			}
		}
		String loadmore = new Gson().toJson(rs);
		response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();	
        out.print(loadmore);
	}

}
