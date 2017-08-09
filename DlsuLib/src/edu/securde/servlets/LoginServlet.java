package edu.securde.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.securde.beans.User;
import edu.securde.manager.UserManager;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet({ "/LoginServlet", "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = request.getParameter("username");
		String password = request.getParameter("password");		
		int accountId = UserManager.checkCredentialsbyEmail(user, password);
		if(accountId == -1) {
			response.setContentType("text/html;charset=UTF-8");
	        response.getWriter().write("error");
		} else {			
			System.out.println("Login Successful");
		String userid = accountId+"";
		
		Cookie usernameCookie = new Cookie("userid", userid);
			usernameCookie.setMaxAge(60*60*24);
			usernameCookie.setHttpOnly(true); 
			response.addCookie(usernameCookie);
			
			// SESSIONS
			HttpSession session = request.getSession();
			session.setAttribute("imsuchacutie0029", userid);
			request.getRequestDispatcher("HomeServlet").forward(request, response);
		}
	}

}
