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

import edu.securde.beans.Review;
import edu.securde.manager.ReviewManager;

/**
 * Servlet implementation class ReviewServlet
 */
@WebServlet("/ReviewServlet")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String catalogId = request.getParameter("catalogId");
		response.setContentType("text/plain");
		ArrayList<Review> reviews = new ArrayList<>();
		reviews = ReviewManager.getReviewsByCatalogId(catalogId);
		if(reviews.size() > 0) {
			System.out.println(reviews.get(0).getUsername());
			Gson gson = new GsonBuilder().create();
			JsonArray jsonReviews = gson.toJsonTree(reviews).getAsJsonArray();		
			response.getWriter().write(jsonReviews.toString());
		}else {
			response.getWriter().write("No Reviews.");
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