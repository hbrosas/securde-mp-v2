package edu.securde.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.securde.beans.Catalog;
import edu.securde.beans.User;
import edu.securde.manager.CatalogManager;
import edu.securde.manager.UserManager;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet({ "/LoginServlet" })
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
		String user = request.getParameter("user");
		String password = request.getParameter("password");	
		String remember = request.getParameter("remember");
		System.out.println(remember);
		int emailAccountId = UserManager.checkCredentialsbyEmail(user, password);
		int userAccountId = UserManager.checkCredentialsbyUsername(user, password);
		if(emailAccountId == -1) {
			if(userAccountId == -1) {
				response.setContentType("text/html;charset=UTF-8");
		        response.getWriter().write("error");
			} else {
				login(userAccountId, remember, request, response);
				response.setContentType("text/html;charset=UTF-8");
		        response.getWriter().write("success");
			}
		} else {
			login(emailAccountId, remember, request, response);
			response.setContentType("text/html;charset=UTF-8");
	        response.getWriter().write("success");
		}
	}
	
	public void login(int id, String remember, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = id+"";
		
		if(remember.equals("yes")) {
			Cookie usernameCookie = new Cookie("cx", userid);
			usernameCookie.setMaxAge(60*60*24);
			usernameCookie.setHttpOnly(true); 
			response.addCookie(usernameCookie);
		}

		// SESSIONS
		HttpSession session = request.getSession();
		session.setAttribute("cx", userid);
		
	    
	}

}
