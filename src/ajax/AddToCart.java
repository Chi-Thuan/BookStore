package ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CartItem;
import beans.CartSession;
import service.IServiceCart;
import service.impl.ServiceCart;

import com.google.gson.Gson;

@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	private IServiceCart cart;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		CartSession cartSession = (CartSession) session.getAttribute("cartSession");
		cart = new ServiceCart();
		String _id = request.getParameter("id");
		CartItem cartItem = cart.findCart(_id);
		if (cartSession != null ) {
			cartSession.add(cartItem);
			session.setAttribute("cartSession", cartSession);
			String jsonCart = new Gson().toJson(cartSession);
			response.setContentType("application/json");
	        response.setCharacterEncoding("UTF-8");
	        PrintWriter out = response.getWriter();	
	        out.print(jsonCart);
		}else {
			CartSession createCartSession = new CartSession();
			createCartSession.getCart().add(cartItem);
			session.setAttribute("cartSession", cartSession);			
		}
	}
}
