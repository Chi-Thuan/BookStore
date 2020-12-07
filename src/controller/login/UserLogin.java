package controller.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.User;
import service.IServiceLogin;
import service.impl.ServiceLogin;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	
	private IServiceLogin login;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		login = new ServiceLogin();
		String nextPage = "/jsp/user/home/index.jsp";
		if(login.checkEmail(email)){
			request.setAttribute("messErrorLogin", "Tài khoản không tồn tại");
			nextPage = "/jsp/user/login/index.jsp";
		}else {
			User user = login.loginUser(email, password);
			if(user == null) {
				request.setAttribute("messErrorLogin", "Sai thông tin đăng nhập");
				request.setAttribute("emailError", email);
				nextPage = "/jsp/user/login/index.jsp";
			}
		}
		
		getServletContext().getRequestDispatcher(nextPage).forward(request, response);
	}

}
