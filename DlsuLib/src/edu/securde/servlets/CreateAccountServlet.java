package edu.securde.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.securde.beans.User;
import edu.securde.manager.UserManager;

/**
 * Servlet implementation class CreateAccountServlet
 */
@WebServlet("/CreateAccountServlet")
public class CreateAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateAccountServlet() {
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
		User user = new User();
		user.setUsername(request.getParameter("username"));
		user.setEmailaddress("shs@dlsu.edu.ph");
		user.setPassword(request.getParameter("tempPassword"));
		user.setFirstname(request.getParameter("firstName"));
		user.setLastname(request.getParameter("lastName"));
		user.setMiddlename(request.getParameter("middleName"));
		user.setIdnumber(request.getParameter("idNumber"));
		user.setBirthdate(Integer.parseInt(request.getParameter("bDate")));
		user.setBirthmonth(Integer.parseInt(request.getParameter("bMonth")));
		user.setBirthyear(Integer.parseInt(request.getParameter("bYear")));
		user.setRoleid(Integer.parseInt(request.getParameter("role")));
		user.setSqid(1);
		user.setSqanswer("dlsulibrary");
		user.setSalt(UserManager.generateSalt());
		int id = UserManager.CreateAccount(user);
		request.getRequestDispatcher("admin_home.jsp").forward(request, response);
	}

}
