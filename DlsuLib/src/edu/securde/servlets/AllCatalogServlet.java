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

import edu.securde.beans.User;
import edu.securde.beans.Catalog;
import edu.securde.beans.Review;
import edu.securde.beans.User;
import edu.securde.manager.CatalogManager;
import edu.securde.manager.Logging;
import edu.securde.manager.ReviewManager;
import edu.securde.manager.UserManager;

/**
 * Servlet implementation class AllCatalogServlet
 */
@WebServlet("/AllCatalogServlet")
public class AllCatalogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllCatalogServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user = (User) request.getAttribute("user");
		Cookie[] cookies;
		int role = user.getRoleid();
		switch(role) {
		case 1: case 5: case 6:
			ArrayList<Catalog> catalogs = CatalogManager.getAllCatalogs();
			Logging.Log("UPDATE: Gathering all catalogs\n");
			request.setAttribute("catalogs", catalogs);
			request.setAttribute("user", user);
			session.setAttribute("user", user);
			
			if(user.getRoleid() == 1) Logging.Log("UPDATE: User is a Student\n");
			if(user.getRoleid() == 5) Logging.Log("UPDATE: User is an Employee\n");
			if(user.getRoleid() == 6) Logging.Log("UPDATE: User is a Guest\n");
			
			
			cookies = request.getCookies();
			if(cookies != null) {
				for(int i = 0; i < cookies.length; i++) {
					if(cookies[i].getName().equals("trie")) {
						cookies[i].setValue(null);
						cookies[i].setMaxAge(0);
						response.addCookie(cookies[i]);
					}
				}
			}
			
			Logging.Log("UPDATE: Redirecting to the home page\n");
			request.getRequestDispatcher("home.jsp").forward(request, response);
			break;
		case 2: case 3: case 4:
			request.setAttribute("user", user);
			session.setAttribute("user", user);
			
			if(user.getRoleid() == 2) Logging.Log("UPDATE: User is a Library Manager\n");
			if(user.getRoleid() == 3) Logging.Log("UPDATE: User is a Library Staff\n");
			if(user.getRoleid() == 4) Logging.Log("UPDATE: User is a Administrator\n");
			
			cookies = request.getCookies();
			if(cookies != null) {
				for(int i = 0; i < cookies.length; i++) {
					if(cookies[i].getName().equals("trie")) {
						cookies[i].setValue(null);
						cookies[i].setMaxAge(0);
						response.addCookie(cookies[i]);
					}
				}
			}
			
			Logging.Log("UPDATE: Redirecting to Administrator Panel\n");
			request.getRequestDispatcher("admin_home.jsp").forward(request, response);
			break;
		}
	}

}
