package edu.securde.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.securde.beans.Reservation;
import edu.securde.beans.User;
import edu.securde.manager.ReservationManager;

/**
 * Servlet implementation class ReserveServlet
 */
@WebServlet("/ReserveServlet")
public class ReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReserveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		String ajaxRequest = request.getParameter("ajaxRequest");
		if(ajaxRequest != null) {
			ArrayList<Reservation> reservations = ReservationManager.getReservationWithDate(ajaxRequest);
			String transformedReservations = "";
			for(Reservation reservation : reservations) {
				if(reservation.getStatusid() == 3) {
					String transformedReservation="";
					int room = reservation.getRoomtimeslotid() - 252;
					if(room <= 26) {
						transformedReservation ="ma" +String.valueOf(room);
					}else if(room <= 52 ) {
						room -= 26;
						transformedReservation ="d" +String.valueOf(room);
					}else if(room <= 78) {
						room -= (2*26);
						transformedReservation ="l" +String.valueOf(room);
					}else if(room <= 104) {
						room -= (3*26);
						transformedReservation ="ra" +String.valueOf(room);
					}else if(room <= 130) {
						room -= (4*26);
						transformedReservation ="bo" +String.valueOf(room);
					}
					transformedReservations += transformedReservation + " ";
				}
			}
			transformedReservations = transformedReservations.trim();
			response.setContentType("text/html;charset=UTF-8");
	        response.getWriter().write(transformedReservations);
		}else {
			request.setAttribute("user", user);
			request.getRequestDispatcher("reserve.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("ucx");
		
			String reservationIds = request.getParameter("reservationIds");
			String[] ids = reservationIds.split(",");
			String reservedDate = request.getParameter("reservedDate");
			System.out.println(reservationIds);
			System.out.println(reservedDate);
			boolean success = true;
			for(String id : ids) {
				boolean added = ReservationManager.addReservation(Integer.parseInt(id), user.getUserid(), 3, reservedDate);
				if(!added) {
					success = false;
				}
			}
			if(success) {
				response.setContentType("text/html;charset=UTF-8");
		        response.getWriter().write("success");
			}else {
				response.setContentType("text/html;charset=UTF-8");
		        response.getWriter().write("success");
			}		
	}

}
