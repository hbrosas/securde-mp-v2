package edu.securde.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.securde.beans.User;
import edu.securde.manager.UserManager;

/**
 * Servlet implementation class StartServlet
 */
@WebServlet("/StartServlet")
public class StartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Cookie[] cookieList = request.getCookies();
		if (cookieList != null) {
			for (int i = 0; i < cookieList.length; i++) {
				if (cookieList[i].getName().equals("cx")) {
					session.setAttribute("cx", cookieList[i].getValue());					
				}
			}
		}
		
		// check if session has started
		if (session.getAttribute("cx") == null) {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} else {
			int id = Integer.parseInt(session.getAttribute("cx").toString());
			User user = UserManager.getUser(id);
			request.setAttribute("user", user.getEmailaddress());
			request.setAttribute("password", user.getPassword());
			request.setAttribute("remember", "no");
			request.getRequestDispatcher("AllCatalogServlet").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
