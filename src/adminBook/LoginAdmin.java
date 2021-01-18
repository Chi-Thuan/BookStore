package adminBook;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.IAdminHomeDAO;
import Model.Admin;
import beans.AdminSession;
import service.IServiceAdminHome;
import service.impl.ServiceAdminHome;
import service.impl.ServiceLogin;

/**
 * Servlet implementation class LoginAdmin
 */
@WebServlet("/LoginAdmin")
public class LoginAdmin extends HttpServlet {
	private IServiceAdminHome admin ;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String pass = request.getParameter("password");
		String next_page = "/jsp/admin/login.jsp";
		admin = new ServiceAdminHome();
		Admin account = admin.loginAdmin(username, pass);
		if(account != null) {
			AdminSession adminSession = new AdminSession();
			next_page = "/adminBook?typepage=listbook";
			response.setCharacterEncoding("UTF-8");
			adminSession.setFullname(account.getFullName());
			adminSession.setType(account.getType());
			adminSession.setUsername(account.getUsername());
			session.setAttribute("adminSession", adminSession);
			getServletContext().getRequestDispatcher(next_page).forward(request, response);
		}else {
			getServletContext().getRequestDispatcher(next_page).forward(request, response);
		}
		
	}
}
