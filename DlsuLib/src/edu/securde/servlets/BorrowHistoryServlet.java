package edu.securde.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.securde.beans.Borrow;
import edu.securde.beans.Catalog;
import edu.securde.beans.User;
import edu.securde.manager.BorrowManager;
import edu.securde.manager.CatalogManager;
import edu.securde.manager.Logging;

/**
 * Servlet implementation class BorrowHistoryServlet
 */
@WebServlet("/BorrowHistoryServlet")
public class BorrowHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BorrowHistoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		if(session.getAttribute("user") == null) {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		User user = (User) session.getAttribute("user");
		int id = user.getUserid();
		ArrayList<Borrow> borrows = BorrowManager.getUserBorrowHistory(id);
		ArrayList<Catalog> catalogs = CatalogManager.getAllCatalogs();
		request.setAttribute("borrows", borrows);
		request.setAttribute("catalogs", catalogs);
		Logging.Log("UPDATE: User Browsing Borrow History\n");
		request.getRequestDispatcher("borrowhistory.jsp").forward(request, response);
	}

}
