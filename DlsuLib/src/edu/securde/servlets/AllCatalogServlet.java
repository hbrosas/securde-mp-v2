package edu.securde.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		User user = UserManager.getUser(Integer.parseInt(session.getAttribute("cx").toString()));
	    ArrayList<Catalog> catalogs = CatalogManager.getAllCatalogs();
	    request.setAttribute("user", user);
	    request.setAttribute("catalogs", catalogs);
	    request.getRequestDispatcher("home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		User user = UserManager.getUser(Integer.parseInt(session.getAttribute("cx").toString()));
	    ArrayList<Catalog> catalogs = CatalogManager.getAllCatalogs();
	    request.setAttribute("user", user);
	    request.setAttribute("catalogs", catalogs);
	    request.getRequestDispatcher("home.jsp").forward(request, response);
	}

}
