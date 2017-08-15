package edu.securde.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;

import edu.securde.beans.Reservation;
import edu.securde.manager.ReservationManager;
import edu.securde.manager.ReviewManager;

/**
 * Servlet implementation class AdminRerserveServlet
 */
@WebServlet("/AdminReserveServlet")
public class AdminReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminReserveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session = request.getSession();
//		User user = (User) session.getAttribute("ucx");
//		request.setAttribute("user", user);
//		if(user.getRoleid() == 2) {
			ArrayList<String> dates = ReservationManager.getAllDatesReserved();
			request.setAttribute("dates", dates);
			request.getRequestDispatcher("edit_reservation.jsp").forward(request, response);
//		}else {
//			
//		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String date = request.getParameter("date");
		response.setContentType("text/plain");
		ArrayList<Reservation> reservations = new ArrayList<>();
		reservations = ReservationManager.getReservationWithDate(date);
		if(reservations.size() > 0) {
			Gson gson = new GsonBuilder().create();
			JsonArray jsonreservations = gson.toJsonTree(reservations).getAsJsonArray();		
			System.out.println(jsonreservations.toString());
			response.getWriter().write(jsonreservations.toString());
		}else {
			response.getWriter().write("No reservations.");
		}
		doGet(request, response);
	}

}
