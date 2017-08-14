package edu.securde.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.securde.beans.Catalog;
import edu.securde.manager.CatalogManager;
import edu.securde.manager.Logging;

/**
 * Servlet implementation class AddCatalogServlet
 */
@WebServlet("/AddCatalogServlet")
public class AddCatalogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCatalogServlet() {
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
		// TODO Auto-generated method stub
		Catalog c = new Catalog();
		c.setTitle(request.getParameter("title"));
		c.setAuthor(request.getParameter("author"));
		c.setYear(Integer.parseInt(request.getParameter("year")));
		c.setPublisher(request.getParameter("publisher"));
		c.setLocation(request.getParameter("location"));
		c.setCatalogtype(Integer.parseInt(request.getParameter("catalogType")));
		c.setStatus(4);
		c.setTags(request.getParameter("tags"));
		CatalogManager.AddCatalog(c);
		
		Logging.Log("UPDATE: Publishing Catalog: "+ c.getTitle() + " by " + c.getAuthor() +"\n");
		
		request.getRequestDispatcher("admin_home.jsp").forward(request, response);
	}

}
