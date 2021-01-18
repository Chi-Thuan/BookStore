package adminBook;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.AdminSession;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setCharacterEncoding("UTF-8");
			HttpSession session = request.getSession();
			AdminSession adminSession = (AdminSession) session.getAttribute("adminSession");
			
			if(adminSession == null ) {
				response.sendRedirect("pageLogin");
			}else {
				String next_page = "/jsp/admin/home.jsp";
				String type_page = request.getParameter("typepage");
				switch (type_page) {
				case "listbook":
					next_page = "/jsp/admin/home.jsp";
					
					break;
				case "addbook":
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
