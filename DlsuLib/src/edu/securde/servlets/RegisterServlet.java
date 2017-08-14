package edu.securde.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.securde.beans.User;
import edu.securde.manager.Hash;
import edu.securde.manager.UserManager;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String sqAnswer = request.getParameter("sqAnswer");
		String salt = UserManager.generateSalt();
		User user = new User();
		user.setUsername(request.getParameter("username"));
		user.setEmailaddress(request.getParameter("email"));
		password = Hash.getHash(password, salt);
		user.setPassword(password);
		user.setFirstname(request.getParameter("firstName"));
		user.setLastname(request.getParameter("lastName"));
		user.setMiddlename(request.getParameter("middleName"));
		user.setIdnumber(request.getParameter("idNumber"));
		user.setBirthdate(Integer.parseInt(request.getParameter("bDate")));
		user.setBirthmonth(Integer.parseInt(request.getParameter("bMonth")));
		user.setBirthyear(Integer.parseInt(request.getParameter("bYear")));
		user.setRoleid(Integer.parseInt(request.getParameter("role")));
		user.setSqid(Integer.parseInt(request.getParameter("securityQuestion")));
		sqAnswer = Hash.getHash(sqAnswer, salt);
		user.setSqanswer(sqAnswer);
		user.setSalt(salt);
		int id = UserManager.CreateAccount(user);
		user.setUserid(id);
		
		request.setAttribute("action", "newuser");
		request.setAttribute("user", user);
		request.getRequestDispatcher("AllCatalogServlet").forward(request, response);
	}

}
