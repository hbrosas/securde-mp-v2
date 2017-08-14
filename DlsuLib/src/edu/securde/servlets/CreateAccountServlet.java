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
		response.sendRedirect("forbidden.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int i=1;
		String tempPassword = request.getParameter("tempPassword");
		String email = "shs@dlsu.edu.ph";
		String temp = "shs@dlsu.edu.ph";
		String username = request.getParameter("username");
		String salt = UserManager.generateSalt();
		String sqAnswer = "";
		User user = new User();
		user.setUsername(request.getParameter("username"));
		while(UserManager.checkEmailExists(email)) {
			email = "shs"+ i +"@dlsu.edu.ph";
			System.out.println(email);
			i++;
		}
		user.setEmailaddress(email);
		tempPassword = Hash.getHash(tempPassword, salt);
		user.setPassword(tempPassword);
		user.setFirstname(request.getParameter("firstName"));
		user.setLastname(request.getParameter("lastName"));
		user.setMiddlename(request.getParameter("middleName"));
		user.setIdnumber(request.getParameter("idNumber"));
		user.setBirthdate(Integer.parseInt(request.getParameter("bDate")));
		user.setBirthmonth(Integer.parseInt(request.getParameter("bMonth")));
		user.setBirthyear(Integer.parseInt(request.getParameter("bYear")));
		user.setRoleid(Integer.parseInt(request.getParameter("role")));
		user.setSqid(1);
		sqAnswer = Hash.getHash("dlsulibrary", salt);
		user.setSqanswer(sqAnswer);
		user.setSalt(salt);
		int id = UserManager.CreateAccount(user);
		request.getRequestDispatcher("admin_home.jsp").forward(request, response);
	}

}
