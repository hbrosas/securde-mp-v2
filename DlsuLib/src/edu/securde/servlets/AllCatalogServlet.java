package edu.securde.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
<<<<<<< HEAD
import edu.securde.beans.User;
=======
=======
>>>>>>> 8e44629951476a6c4358b627fe2818d71a7497dc
import edu.securde.beans.Catalog;
import edu.securde.beans.User;
import edu.securde.manager.CatalogManager;
import edu.securde.manager.UserManager;
<<<<<<< HEAD
>>>>>>> 8e44629951476a6c4358b627fe2818d71a7497dc
=======
>>>>>>> 8e44629951476a6c4358b627fe2818d71a7497dc

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
<<<<<<< HEAD
<<<<<<< HEAD
		User user = (User) request.getAttribute("user");
		System.out.println(user.getFirstname());
=======
>>>>>>> 8e44629951476a6c4358b627fe2818d71a7497dc
=======
>>>>>>> 8e44629951476a6c4358b627fe2818d71a7497dc
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
