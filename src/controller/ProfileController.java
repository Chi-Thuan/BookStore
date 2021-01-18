package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.CartSession;
import beans.UserLoginSession;

/**
 * Servlet implementation class ProfileController
 */
@WebServlet("/ProfileController")
public class ProfileController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session = request.getSession();
//		UserLoginSession userLogin = (UserLoginSession) session.getAttribute("userLogin");
//		request.setAttribute("titlePage", userLogin.getFullname());
		request.setAttribute("menuActive", "profile" );
		getServletContext().getRequestDispatcher("/jsp/user/profile/index.jsp").forward(request, response);
	}

}
