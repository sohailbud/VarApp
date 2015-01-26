package login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import login.service.LoginService;
import login.user.User;


/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username, password;
		
		username=request.getParameter("username");
		password=request.getParameter("password");

		LoginService loginService = new LoginService();
		
		boolean result = loginService.authenticate(username, password);

		if (result) {
			User user = loginService.getUserDetails(username);
			request.getSession().setAttribute("user", user);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("forecast_panel.jsp");
			dispatcher.forward(request, response);
			return;
		}
		else {
			response.sendRedirect("login.jsp");
			return;
		}
		
	}
	
	
	

	

}
