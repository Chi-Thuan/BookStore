package controller.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.User;
import beans.UserLoginSession;
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
		HttpSession session = request.getSession();
		UserLoginSession userLogin = (UserLoginSession) session.getAttribute("userLogin");
		
		String fullname = request.getParameter("fullName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		
		String nextPage = "/jsp/user/home/index.jsp";
		
		login = new ServiceLogin();
		User user = new User(fullname, email, phone);

		if(login.checkEmail(email)) {
			// them tai khoan
			user.setPassword(password);
			login.registerUser(user);
			// set thong tin vao session
			userLogin.setFullname(fullname);
			userLogin.setEmail(email);
			userLogin.setPhone(phone);
			userLogin.setIsLogin(true);
			session.setAttribute("userLogin", userLogin);
			response.sendRedirect("home");
		}else {
			// email da duoc su dung
			nextPage = "/jsp/user/login/index.jsp";
			request.setAttribute("openFormRegister", "oke");
			request.setAttribute("userErrorRegister", user);
			getServletContext().getRequestDispatcher(nextPage).forward(request, response);
		}
		
	
	}

}
