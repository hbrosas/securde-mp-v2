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
	private HttpServletRequest request;
	private HttpServletResponse response;
	
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
		this.request = request;
		this.response = response;
		String user = request.getParameter("user");
		String password = request.getParameter("password");	
		String remember = request.getParameter("remember");
		if(!errorCount()) {
			// Reached 5 errors
			response.setContentType("text/html;charset=UTF-8");
	        response.getWriter().write("error3");
		} else {
			int emailAccountId = UserManager.checkCredentialsbyEmail(user, password);
			int userAccountId = UserManager.checkCredentialsbyUsername(user, password);
			if(emailAccountId == -1) {
				if(userAccountId == -1) {
					System.out.println("error");
					if(errorCount()) {
						// not 5 errors yet
						response.setContentType("text/html;charset=UTF-8");
				        response.getWriter().write("error2");
					} else {
						response.setContentType("text/html;charset=UTF-8");
				        response.getWriter().write("error3");
					}
				} else {
					User u = UserManager.getUser(userAccountId);
					if(UserManager.checkIfActive(u)) {
						System.out.println(UserManager.checkIfActive(u));
						login(userAccountId, remember);
						response.setContentType("text/html;charset=UTF-8");
				        response.getWriter().write("good");
					} else {
						response.setContentType("text/html;charset=UTF-8");
				        response.getWriter().write("error1");
					}
				}
			} else {
				User u = UserManager.getUser(emailAccountId);
				if(UserManager.checkIfActive(u)) {
					login(emailAccountId, remember);
					response.setContentType("text/html;charset=UTF-8");
			        response.getWriter().write("success");
				} else {
					response.setContentType("text/html;charset=UTF-8");
			        response.getWriter().write("error1");
				}
			}
		}
	}
	
	public void login(int id, String remember) throws ServletException, IOException {
		String userid = id+"";
		
		if(remember.equals("yes")) {
			Cookie usernameCookie = new Cookie("cx", userid);
			usernameCookie.setMaxAge(60*60*24);
			usernameCookie.setHttpOnly(true); 
			usernameCookie.setSecure(true);
			usernameCookie.setPath("/");
			response.addCookie(usernameCookie);
		}

		// SESSIONS
		HttpSession session = request.getSession();
		session.setAttribute("cx", userid);
		session.setAttribute("ucx", UserManager.getUser(id));
	}
	
	public boolean errorCount() {
		boolean cookieFound = false;
		HttpSession session = request.getSession();
		Cookie[] cookieList = request.getCookies();
		if (cookieList != null) {
			for (int i = 0; i < cookieList.length; i++) {
				if (cookieList[i].getName().equals("error")) {
					cookieFound = true;
					int error = Integer.parseInt(cookieList[i].getValue());
					if(error >= 5) {
						return false;
					} else {
						error++;
						cookieList[i].setValue(error+"");
						if(error == 5)
							cookieList[i].setMaxAge(10*60);
						return true;
					}
				}
			}
		}
		System.out.println("Cookie found: " + cookieFound);
		if(!cookieFound) {
			System.out.println("Enter");
			Cookie errorCookie = new Cookie("error", 1+"");
			errorCookie.setMaxAge(60*60*24);
			errorCookie.setHttpOnly(true); 
			errorCookie.setSecure(true);
			errorCookie.setPath("/");
			response.addCookie(errorCookie);
			return true;
		}
		return true;
	}

}
