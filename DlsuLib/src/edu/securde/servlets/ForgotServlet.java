package edu.securde.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.securde.manager.Hash;
import edu.securde.manager.Logging;
import edu.securde.manager.SecurityQuestionManager;
import edu.securde.manager.UserManager;

/**
 * Servlet implementation class ForgotServlet
 */
@WebServlet("/ForgotServlet")
public class ForgotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotServlet() {
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
		int type = Integer.parseInt(request.getParameter("type"));
		if(type == 1) {
			String email = request.getParameter("email");
			if(UserManager.checkEmailExists(email)) {
				int sqid = UserManager.getSQid(email);
				String sq = SecurityQuestionManager.getSQ(sqid);
				System.out.println(sq);
				response.setContentType("text/html;charset=UTF-8");
		        response.getWriter().write(sq);
			} else {
				System.out.println("else error");
				response.setContentType("text/html;charset=UTF-8");
		        response.getWriter().write("error");
			}
		} else if (type == 2) {
			String email = request.getParameter("email");
			System.out.println("hotdog"+UserManager.getSQAns(email));
			System.out.println(request.getParameter("sqans"));
	        String sqans = Hash.getHash(request.getParameter("sqans"), UserManager.getSalt(email, email));
	        System.out.println(sqans);
				if(UserManager.getSQAns(email).equals(sqans)) {
					System.out.println("CHECK");
					response.setContentType("text/html;charset=UTF-8");
					response.getWriter().write("correct");
				}
				else {
					System.out.println("else error");
					response.setContentType("text/html;charset=UTF-8");
			        response.getWriter().write("error");
				}
			}
			else if (type == 3) {
				boolean confirm = false;
				String email = request.getParameter("email");
				String newpw = request.getParameter("newpw");
				String confirmpw = request.getParameter("confirmpw");
		        System.out.println(newpw);
		        System.out.println(confirmpw);
					if(newpw.equals(confirmpw)) {
						String salt = UserManager.getSalt(email, email);
						String hash = Hash.getHash(newpw, salt);
						System.out.println("CHECK");
						response.setContentType("text/html;charset=UTF-8");
						response.getWriter().write("correct");
						UserManager.setNewPass(email, hash);
					}
					else {
						System.out.println("else error");
						response.setContentType("text/html;charset=UTF-8");
				        response.getWriter().write("error");
				}
			}
		Logging.Log("Email Address: " + request.getParameter("email") + "changed password");
	}
}
