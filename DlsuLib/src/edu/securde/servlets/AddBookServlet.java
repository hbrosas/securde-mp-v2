package edu.securde.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		int year = Integer.parseInt(request.getParameter("year"));
		String publisher = request.getParameter("publisher");
		String location = request.getParameter("location");
		String catalogType = request.getParameter("catalogType");
		String status = request.getParameter("status");
		String tags = request.getParameter("tags");
		int catalogTyp = 0;
		int statusid;
		boolean add = false;
		if(catalogType.equals("Book")) {
			catalogTyp = 1;
		} else if(catalogType.equals("Magazine")) {
			catalogTyp = 2;
		} else if(catalogType.equals("Thesis")) {
			catalogTyp = 3;
		}
		
		if(status.equals("Available")) {
			statusid = 4;
		} else 
			statusid = 2;
		
		add = CatalogManager.AddCatalog(title, author, year, publisher, location, catalogTyp, statusid, tags);
	}
}
