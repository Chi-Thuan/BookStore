package ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import beans.UserLoginSession;
import controller.login.UserLogin;

/**
 * Servlet implementation class checkThanhToan
 */
@WebServlet("/checkThanhToan")
public class checkThanhToan extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserLoginSession userLogin = (UserLoginSession) session.getAttribute("userLogin");
		String json = new Gson().toJson(userLogin.getIsLogin());
		response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();	
        out.print(json);
	}

}
