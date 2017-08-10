package edu.securde.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.securde.beans.SecurityQuestion;
import edu.securde.beans.User;
import edu.securde.db.DBPool;

public class SecurityQuestionManager {
	
	public static String getSQ(int sqid) {
		String sql = "SELECT * FROM " + SecurityQuestion.TABLE_NAME + " WHERE " +
				SecurityQuestion.COLUMN_QUESTIONID +" =?;";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sq = "";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sqid);
			rs = pstmt.executeQuery();
			if(rs.next())
				sq = rs.getString(SecurityQuestion.COLUMN_QUESTION);
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
		
		return sq;
	}
	
	// Get all Questions
		public static ArrayList<SecurityQuestion> GetAllQuestions() {
			String sql = "SELECT * FROM " + SecurityQuestion.TABLE_NAME + ";";
			Connection conn = DBPool.getInstance().getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ArrayList<SecurityQuestion> questions = new ArrayList<>();
			
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					SecurityQuestion sq = new SecurityQuestion();
					sq.setID(rs.getInt(SecurityQuestion.COLUMN_QUESTIONID));
					sq.setQuestion(rs.getString(SecurityQuestion.COLUMN_QUESTION));
					questions.add(sq);
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
			
			return questions;
		}

}
