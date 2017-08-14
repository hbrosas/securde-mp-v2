package edu.securde.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.securde.manager.Logging;
import edu.securde.manager.SecurityQuestionManager;
import edu.securde.manager.UserManager;

/**
 * Servlet implementation class ComposeAccount
 */
@WebServlet("/ComposeAccount")
public class ComposeAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComposeAccount() {
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
		String email = request.getParameter("inputReqEmail");
		request.setAttribute("email", email);
		request.setAttribute("tempPw", UserManager.generateTemporaryPassword());
		request.setAttribute("sq", SecurityQuestionManager.GetAllQuestions());
		request.setAttribute("compose", "yes");
		
		Logging.Log("UPDATE: User redirected to the Register Account Page\n");
		
		request.getRequestDispatcher("registeraccount.jsp").forward(request, response);
	}

}
