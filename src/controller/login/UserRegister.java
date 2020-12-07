package controller.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.User;
import service.impl.ServiceLogin;

/**
 * Servlet implementation class UserRegister
 */
@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	private ServiceLogin login;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String fullname = request.getParameter("fullName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		
		String nextPage = "/jsp/user/home/index.jsp";
		
		login = new ServiceLogin();
		User user = new User(fullname, email, phone);

		if(login.checkEmail(email)) {
			user.setPassword(password);
			login.registerUser(user);
		}else {
			request.setAttribute("openFormRegister", "oke");
			request.setAttribute("userErrorRegister", user);
			nextPage = "/jsp/user/login/index.jsp";
		}
		
		getServletContext().getRequestDispatcher(nextPage).forward(request, response);
	}

}
