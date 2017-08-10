package edu.securde.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.securde.beans.Catalog;
import edu.securde.beans.User;
import edu.securde.manager.CatalogManager;
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
		User user = (User) request.getAttribute("user");
		System.out.println(user.getFirstname());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("inputEmail");
		String password = request.getParameter("inputPassword");
		int id = UserManager.checkCredentialsbyEmail(email, password);
		User user = UserManager.getUser(id);
	    ArrayList<Catalog> catalogs = CatalogManager.getAllCatalogs();
	    request.setAttribute("user", user);
	    request.setAttribute("catalogs", catalogs);
	    request.getRequestDispatcher("home.jsp").forward(request, response);
	}

}
