package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.CartSession;
import service.impl.ServiceHome;

/**
 * Servlet implementation class CheckoutController
 */
@WebServlet("/CheckoutController")
public class CheckoutController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("titlePage", "Thanh Toán");
		request.setAttribute("menuActive","Tất Cả Sản Phẩm" );
		
		HttpSession session = request.getSession(true);
		CartSession cartSession = (CartSession) session.getAttribute("cartSession");
		request.setAttribute("listCart", cartSession);
		getServletContext().getRequestDispatcher("/jsp/user/checkout/index.jsp").forward(request, response);
	}
}
