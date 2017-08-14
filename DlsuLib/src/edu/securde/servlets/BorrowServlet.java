package edu.securde.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.securde.beans.Borrow;
import edu.securde.beans.User;
import edu.securde.manager.BorrowManager;
import edu.securde.manager.Logging;

/**
 * Servlet implementation class BorrowServlet
 */
@WebServlet("/BorrowServlet")
public class BorrowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BorrowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int catalogId = Integer.parseInt(request.getParameter("catalogId"));
		User user = (User) session.getAttribute("user");
		
		Logging.Log("UPDATE: User "+ user.getUserid() +" borrows catalog "+ catalogId +"\n");
		
		if(catalogId > 0) {
			BorrowManager.Borrow(catalogId, user);
			response.setContentType("text/html;charset=UTF-8");
	        response.getWriter().write("success");
		} else {
			
			response.setContentType("text/html;charset=UTF-8");
	        response.getWriter().write("error");
		}
	}

}
