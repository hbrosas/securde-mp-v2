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
import edu.securde.beans.MeetingRoom;
import edu.securde.beans.MeetingRoomType;
import edu.securde.beans.Reservation;
import edu.securde.manager.BorrowManager;
import edu.securde.manager.CatalogManager;
import edu.securde.manager.MeetingRoomManager;
import edu.securde.manager.ReservationManager;

/**
 * Servlet implementation class ReserveHistoryServlet
 */
@WebServlet("/ReserveHistoryServlet")
public class ReserveHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReserveHistoryServlet() {
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
		int id = Integer.parseInt(session.getAttribute("cx").toString());
		ArrayList<Reservation> reservations = ReservationManager.getUserReservation(id);
		ArrayList<MeetingRoom> rooms = MeetingRoomManager.GetAllRoomSlots();
		ArrayList<MeetingRoomType> roomTypes = MeetingRoomManager.GetAllMeetingRoomType();
		request.setAttribute("reservations", reservations);
		request.setAttribute("rooms", rooms);
		request.setAttribute("roomTypes", roomTypes);
		request.getRequestDispatcher("ReservationHistory.jsp").forward(request, response);
	}

}
