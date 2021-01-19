package adminBook;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Book;
import Model.Category;
import Model.NXB;
import beans.AdminSession;
import service.IServiceAdminHome;
import service.IServiceCategory;
import service.impl.ServiceAdminHome;
import service.impl.ServiceCategory;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private IServiceAdminHome admin;
	private IServiceCategory category;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setCharacterEncoding("UTF-8");
			HttpSession session = request.getSession();
			AdminSession adminSession = (AdminSession) session.getAttribute("adminSession");
			
			if(adminSession == null ) {
				response.sendRedirect("pageLogin");
			}else {
				String next_page = "/jsp/admin/home.jsp";
				String type_page = request.getParameter("typepage");
				admin = new ServiceAdminHome();
				switch (type_page) {
					case "listbook":
						next_page = "/jsp/admin/home.jsp";
						List<Book> listAllBook = admin.getAllBook();
						request.setAttribute("listAllBook", listAllBook);
						break;
					case "addbook":
						category = new ServiceCategory();
						List<Category> listCategory = category.getAllCategory();
						List<NXB> listNXB = admin.listNxb();
						request.setAttribute("listCategory", listCategory);
						request.setAttribute("listNXB", listNXB);
						
						String nameBook = request.getParameter("nameBook");
						if(nameBook != null) {
							String des =  request.getParameter("description");
							String id_category = request.getParameter("category");
							double price = Double.parseDouble(request.getParameter("price"));
							String id_nxb = request.getParameter("nxb");
							String id_author = request.getParameter("191990c9-6877-489c-93a9-c31679d9a904");
							int quantity = Integer.parseInt(request.getParameter("quantity"));
							String avatar = "";
							admin.insertBook(avatar, nameBook, price, id_category, des, quantity, id_nxb, id_author);
						}
						
						next_page = "/jsp/admin/createBook.jsp";
						break;
					case "categorybook":
						next_page = "/jsp/admin/category.jsp";	
						break;
					case "updateBook":
						next_page = "/jsp/admin/updateBook.jsp";	
						break;
					default:
						break;
				}
				String active_menu = type_page;
				request.setAttribute("active_menu", active_menu);
				getServletContext().getRequestDispatcher(next_page).forward(request, response);
			}
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
