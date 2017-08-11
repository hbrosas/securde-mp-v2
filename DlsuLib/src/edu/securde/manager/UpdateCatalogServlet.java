package edu.securde.manager;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.securde.beans.Catalog;
import edu.securde.beans.User;

/**
 * Servlet implementation class UpdateCatalogServlet
 */
@WebServlet("/UpdateCatalogServlet")
public class UpdateCatalogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCatalogServlet() {
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
		c.setPublisher(request.getParameter("publisher"));
		c.setYear(Integer.parseInt(request.getParameter("year")));
		c.setTags(request.getParameter("tags"));
		c.setCatalogid(Integer.parseInt(request.getParameter("catalogid")));
		c.setCatalogtype(Integer.parseInt(request.getParameter("catalogtype")));
		c.setStatus(Integer.parseInt(request.getParameter("status")));
		c.setLocation(request.getParameter("location"));
		CatalogManager.EditCatalog(c);
		request.getRequestDispatcher("admin_home.jsp").forward(request, response);
	}

}
