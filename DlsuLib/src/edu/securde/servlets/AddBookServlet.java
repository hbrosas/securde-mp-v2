package edu.securde.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.securde.beans.Catalog;
import edu.securde.manager.CatalogManager;

/**
 * Servlet implementation class AddBookServlet
 */
@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBookServlet() {
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
		Catalog c = new Catalog();
		c.setTitle(request.getParameter("title"));
		c.setAuthor(request.getParameter("author"));
		c.setYear(Integer.parseInt(request.getParameter("year")));
		c.setPublisher(request.getParameter("publisher"));
		c.setLocation(request.getParameter("location"));
		c.setTags(request.getParameter("tags"));
		
		String catalogType = request.getParameter("catalogType");
		String status = request.getParameter("status");
		boolean add = false;
		if(catalogType.equals("Book")) {
			c.setCatalogtype(1);
		} else if(catalogType.equals("Magazine")) {
			c.setCatalogtype(2);
		} else if(catalogType.equals("Thesis")) {
			c.setCatalogtype(3);
		}
		
		if(status.equals("Available")) {
			c.setStatus(4);
		} else 
			c.setStatus(2);
		
		CatalogManager.AddCatalog(c);
	}
}
