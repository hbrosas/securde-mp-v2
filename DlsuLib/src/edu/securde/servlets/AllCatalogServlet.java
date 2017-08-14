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
//		HttpSession session = request.getSession();
//		User user = (User) session.getAttribute("ucx");
//		switch(user.getRoleid()) {
//		case 2: case 3: case 4:
//			request.setAttribute("user", user);
//			request.getRequestDispatcher("admin_home.jsp").forward(request, response);
//			break;
//		case 1: case 5:
//			ArrayList<Catalog> catalogs = CatalogManager.getAllCatalogs();
//			request.setAttribute("user", user);
//			request.setAttribute("catalogs", catalogs);
//		    request.getRequestDispatcher("home.jsp").forward(request, response);
//			break;
//		}
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
//		ArrayList<Catalog> catalogs = CatalogManager.getAllCatalogs();
//		request.setAttribute("user", request.getAttribute("user"));
//		request.setAttribute("catalogs", catalogs);
//	    request.getRequestDispatcher("home.jsp").forward(request, response);
	    
//		HttpSession session = request.getSession();
//		if(session.getAttribute("ucx") == null) {
//			// For guests
//			User user = new User();
//			user.setUsername("Guest");
//			user.setFirstname("Guest");
//			user.setRoleid(6);
//			session.setAttribute("ucx", user);
//			ArrayList<Catalog> catalogs = CatalogManager.getAllCatalogs();
//			request.setAttribute("user", user);
//			request.setAttribute("catalogs", catalogs);
//			request.getRequestDispatcher("home.jsp").forward(request, response);
//		} else {
//			// Newly Registered & Logged in account
//			User user = (User) session.getAttribute("ucx");
//			switch(user.getRoleid()) {
//			case 2: case 3: case 4:
//				request.setAttribute("user", user);
//				request.getRequestDispatcher("admin_home.jsp").forward(request, response);
//				break;
//			case 1: case 5:
//				ArrayList<Catalog> catalogs = CatalogManager.getAllCatalogs();
//				request.setAttribute("user", user);
//				request.setAttribute("catalogs", catalogs);
//			    request.getRequestDispatcher("home.jsp").forward(request, response);
//				break;
//			}
//		}
	}

}
