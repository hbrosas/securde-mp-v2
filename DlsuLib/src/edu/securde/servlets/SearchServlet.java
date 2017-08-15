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
import edu.securde.manager.Logging;
import edu.securde.manager.ReviewManager;
import edu.securde.manager.UserManager;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet({ "/SearchServlet" })
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		System.out.println(session.toString());
		if(session.getAttribute("user") == null) {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		User user = (User) session.getAttribute("user");
		String inputReference = request.getParameter("inputReference");
		String inputBy = request.getParameter("inputBy");
			if(inputReference == null && inputBy == null) {
				request.setAttribute("user", user);
				request.getRequestDispatcher("mainsearch.jsp").forward(request, response);
			}else {
				ArrayList<Catalog> catalogs = CatalogManager.searchCatalog(request.getParameter("inputSearch"), 
			    		inputReference,
			    		inputBy);
				System.out.println("Catalog size: "+catalogs.size());
			    request.setAttribute("user", user);
			    request.setAttribute("catalogs", catalogs);
			    request.getRequestDispatcher("search.jsp").forward(request, response);
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub		
		Logging.Log("User has Search Catalogs");
	}

}
