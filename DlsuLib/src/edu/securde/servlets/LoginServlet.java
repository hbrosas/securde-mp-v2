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

import org.apache.catalina.tribes.util.Logs;

import edu.securde.beans.Catalog;
import edu.securde.beans.User;
import edu.securde.manager.CatalogManager;
import edu.securde.manager.Hash;
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
		response.sendRedirect("forbidden.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get Input
		String user = request.getParameter("inputEmail");
		String password = request.getParameter("inputPassword");	
		String remember = request.getParameter("remember");
		User u;
		System.out.println("Remember = " + remember);
		if(remember == null) remember = "";
		// Check if Valid Account
		int emailAccountId = UserManager.checkCredentialsbyEmail(user, password);
		int userAccountId = UserManager.checkCredentialsbyUsername(user, password);
		HttpSession session = request.getSession();
		
		if(!checkIfLocked(request)) {
			// If account not locked
			if(emailAccountId == -1) {
				if(userAccountId == -1) {
					// If text not email and not user -> DOES NOT EXIST
					if(!findTries(request)) {
						request.setAttribute("action", "create");
						request.setAttribute("message", "Invalid Login and/or Password");
						request.setAttribute("locked", "false");
						
					} else {
						Cookie[] cookies = request.getCookies();
						if(cookies != null) {
							for(int i = 0; i < cookies.length; i++) {
								if(cookies[i].getName().equals("trie")) {
									int tries = Integer.parseInt(cookies[i].getValue());
									System.out.println("Trie = " + tries);
									if(tries >= 5) {
										request.setAttribute("message", "Your account was locked");
										request.setAttribute("locked", "true");										
									} else {
										tries++;
										cookies[i].setValue(tries+"");
										response.addCookie(cookies[i]);
										if(tries == 5) {
											cookies[i].setMaxAge(10*60);
											request.setAttribute("message", "Your account will be locked");
											request.setAttribute("locked", "true");
										}
										request.setAttribute("message", "Invalid Login and/or Password");
										request.setAttribute("locked", "false");
									}
								}
							}
						}
						request.setAttribute("action", "add");
					}
					session.setAttribute("ewow", "yes");
					request.getRequestDispatcher("loginerror.jsp").forward(request, response);
				} else {
					// If text is username
					u = UserManager.getUser(userAccountId);
					
					if(remember.equals("remember")) {
						// Add Cookie
						String salt = UserManager.getSalt(user, user);
						int id = u.getUserid();
						String hashID = Hash.getHash(id+"", salt);
						Cookie cookie = new Cookie ("cx", hashID); 
						cookie.setMaxAge(24 * 60 * 60); 
						response.addCookie(cookie);
						cookie.setPath("/"); 
						cookie.setDomain("localhost");	
					}
					
					request.setAttribute("action", "userlogin");
					request.setAttribute("user", u);
					request.getRequestDispatcher("AllCatalogServlet").forward(request, response);
				}
			} else {
				// If text is email
				u = UserManager.getUser(emailAccountId);
				
				if(remember.equals("remember")) {
					// Add Cookie
					String salt = UserManager.getSalt(user, user);
					int id = u.getUserid();
					String hashID = Hash.getHash(id+"", salt);
					Cookie cookie = new Cookie ("cx", hashID); 
					cookie.setMaxAge(24 * 60 * 60); 
					response.addCookie(cookie);
					cookie.setPath("/"); 
					cookie.setDomain("localhost");	
				}
				
				request.setAttribute("action", "userlogin");
				request.setAttribute("user", u);
				request.getRequestDispatcher("AllCatalogServlet").forward(request, response);
			}
		} else {
			// Go to loginerror.jsp; error = "Your account was locked";
			request.setAttribute("action", "add");
			request.setAttribute("message", "Your account was locked");
			request.setAttribute("locked", "true");
			session.setAttribute("ewow", "yes");
			request.getRequestDispatcher("loginerror.jsp").forward(request, response);
		}
	}
	
	public boolean checkIfLocked(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(int i = 0; i < cookies.length; i++) {
				if(cookies[i].getName().equals("trie")) {
					int tries = Integer.parseInt(cookies[i].getValue());
					if(tries == 5)
						return true;
				}
			}
		}
		
		return false;
	}
	
	public boolean findTries(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(int i = 0; i < cookies.length; i++) {
				if(cookies[i].getName().equals("trie")) {
					return true;
				}
			}
		}
		return false;
	}
}
