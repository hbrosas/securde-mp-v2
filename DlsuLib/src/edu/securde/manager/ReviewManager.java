package edu.securde.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.securde.db.*;
import edu.securde.beans.Catalog;
import edu.securde.beans.Review;
import edu.securde.beans.Catalog;

public class ReviewManager {
		public static void AddReview(int catalogid, String review) {
		String sql = "INSERT INTO " + Review.TABLE_NAME  + " ( " + Review.COLUMN_CATALOGID + ", " + Review.COLUMN_REVIEW
				 + ", " + Review.COLUMN_DATEREVIEWED + ") " + " VALUES (?, ?, NOW()) " + ";";

		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;


		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			pstmt.setInt(1, catalogid);
			pstmt.setString(2, review);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

		public static ArrayList<Review> GetAllReviews() {
		String sql = "SELECT " + "*" + " FROM " + Review.TABLE_NAME
				 + ";";

		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Review> reviews = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				 reviews.add(new Review(rs.getInt(Review.COLUMN_REVIEWID),
						 rs.getInt(Review.COLUMN_USERID),
						 rs.getInt(Review.COLUMN_CATALOGID),
						 rs.getString(Review.COLUMN_REVIEW),
						 rs.getString(Review.COLUMN_DATEREVIEWED)));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return reviews;
	}
	public static ArrayList<Review> getAllReviews(){
			String sql = "SELECT * FROM " + Catalog.TABLE_NAME + ";";
			Connection conn = DBPool.getInstance().getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ArrayList<Review> reviews = new ArrayList<>();
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();

				while(rs.next()) {
					Review review = new Review();
					review.setReviewid(rs.getInt(Review.COLUMN_REVIEWID));
					review.setCatalogid(rs.getInt(Review.COLUMN_CATALOGID));
					review.setReview(rs.getString(Review.COLUMN_REVIEW));
					review.setDatereviewed(rs.getString(Review.COLUMN_DATEREVIEWED));
					review.setUserid(rs.getInt(Review.COLUMN_USERID));
					review.setUsername(UserManager.getUser(review.getUserid()).getUsername());
					reviews.add(review);
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					rs.close();
					pstmt.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			return reviews;
		}

		public static ArrayList<Review> getReviewsByCatalogId(String catalogId) {
			String sql = "SELECT * FROM " + Review.TABLE_NAME + " WHERE " + Review.COLUMN_CATALOGID + " LIKE " + catalogId  +  ";";
			Connection conn = DBPool.getInstance().getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ArrayList<Review> reviews = new ArrayList<>();
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					Review review = new Review();
					review.setReviewid(rs.getInt(Review.COLUMN_REVIEWID));
					review.setCatalogid(rs.getInt(Review.COLUMN_CATALOGID));
					review.setReview(rs.getString(Review.COLUMN_REVIEW));
					review.setDatereviewed(rs.getString(Review.COLUMN_DATEREVIEWED));
					review.setUserid(rs.getInt(Review.COLUMN_USERID));
					review.setUsername(UserManager.getUser(review.getUserid()).getUsername());
					reviews.add(review);
				}
					

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					rs.close();
					pstmt.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			return reviews;
		}
}
