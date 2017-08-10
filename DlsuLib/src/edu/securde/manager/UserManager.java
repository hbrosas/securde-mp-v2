package edu.securde.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import edu.securde.db.*;
import edu.securde.beans.SecurityQuestion;
import edu.securde.beans.User;

public class UserManager {
	
	// Get all accounts (without password, sqid and role)
	public static ArrayList<User> GetAllAccount() {
		String sql = "SELECT * FROM " + User.TABLE_NAME + ";";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<User> users = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				User user = new User();
				user.setUserid(rs.getInt(User.COLUMN_USERID));
				user.setUsername(rs.getString(User.COLUMN_USERNAME));
				user.setEmailaddress(rs.getString(User.COLUMN_EMAILADDRESS));
				user.setFirstname(rs.getString(User.COLUMN_FIRSTNAME));
				user.setMiddlename(rs.getString(User.COLUMN_MIDDLENAME));
				user.setLastname(rs.getString(User.COLUMN_LASTNAME));
				user.setLastloggedin(rs.getString(User.COLUMN_LASTLOGGEDIN));
				user.setStatus(rs.getInt(User.COLUMN_STATUS));
				user.setBirthdate(rs.getInt(User.COLUMN_BIRTHDATE));
				user.setBirthmonth(rs.getInt(User.COLUMN_BIRTHMONTH));
				user.setBirthyear(rs.getInt(User.COLUMN_BIRTHYEAR));
				user.setIdnumber(rs.getString(User.COLUMN_IDNUMBER));
				users.add(user);
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
		
		return users;
	}
	
	// Get User Role
	public static int getRole(int userid) {
		String sql = "SELECT "+ User.COLUMN_ROLEID +" FROM " + User.TABLE_NAME + " WHERE " +
				User.COLUMN_USERID +" =? ;";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int roleid = -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				roleid = rs.getInt(User.COLUMN_ROLEID);
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
		
		return roleid;
	}
	
	// Check Credentials by email
	public static int checkCredentialsbyEmail(String email, String password) {
		String sql = "SELECT "+ User.COLUMN_USERID +" FROM " + User.TABLE_NAME + " WHERE " +
				User.COLUMN_EMAILADDRESS +" =? AND "+ User.COLUMN_PASSWORD +" =? ;";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int userid = -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				userid = rs.getInt(User.COLUMN_USERID);
				System.out.println("userid" + userid);
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
		
		return userid;
	}
	
	// Check Credentials by username
	public static int checkCredentialsbyUsername(String username, String password) {
		String sql = "SELECT "+ User.COLUMN_USERID +" FROM " + User.TABLE_NAME + " WHERE " +
				User.COLUMN_USERNAME +" =? AND "+ User.COLUMN_PASSWORD +" =? ;";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int userid = -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				userid = rs.getInt(User.COLUMN_USERID);
				System.out.println("userid" + userid);
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
		
		return userid;
	}
	
	// Get user
	public static User getUser(int userid) {
		String sql = "SELECT * FROM " + User.TABLE_NAME + " WHERE " +
				User.COLUMN_USERID +" =?;";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = new User();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				user.setUserid(rs.getInt(User.COLUMN_USERID));
				user.setUsername(rs.getString(User.COLUMN_USERNAME));
				user.setEmailaddress(rs.getString(User.COLUMN_EMAILADDRESS));
				user.setFirstname(rs.getString(User.COLUMN_FIRSTNAME));
				user.setMiddlename(rs.getString(User.COLUMN_MIDDLENAME));
				user.setLastname(rs.getString(User.COLUMN_LASTNAME));
				user.setLastloggedin(rs.getString(User.COLUMN_LASTLOGGEDIN));
				user.setStatus(rs.getInt(User.COLUMN_STATUS));
				user.setBirthdate(rs.getInt(User.COLUMN_BIRTHDATE));
				user.setBirthmonth(rs.getInt(User.COLUMN_BIRTHMONTH));
				user.setBirthyear(rs.getInt(User.COLUMN_BIRTHYEAR));
				user.setIdnumber(rs.getString(User.COLUMN_IDNUMBER));
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
		
		return user;
	}
	
	//Checks if the email is valid
	public static int checkEmail(String email) {
		String sql = "SELECT "+ User.COLUMN_USERID +" FROM " + User.TABLE_NAME + " WHERE " +
				User.COLUMN_EMAILADDRESS +" =?;";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int userid = -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next())
				userid = rs.getInt(User.COLUMN_USERID);
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
		
		return userid;
	}
	
	// Check if email is unique (returns -1)/exists (returns userid)
	public static int checkEmailUnique(String email) {
		String sql = "SELECT "+ User.COLUMN_USERID +" FROM " + User.TABLE_NAME + " WHERE " +
				User.COLUMN_EMAILADDRESS +" =?;";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int isUnique = -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next())
				isUnique = rs.getInt(User.COLUMN_USERID);
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
		
		return isUnique;
	}
	
	// Check if username is unique
	public static boolean checkUsernameUnique(String username) {
		String sql = "SELECT "+ User.COLUMN_USERID +" FROM " + User.TABLE_NAME + " WHERE " +
				User.COLUMN_USERNAME +" =?;";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean isUnique = true;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			rs = pstmt.executeQuery();
			if(rs.next())
				isUnique = false;
			else isUnique = true;
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
		
		return isUnique;
	}
	
	public static int getSQid(String email) {
		String sql = "SELECT * FROM " + User.TABLE_NAME + " WHERE " +
				User.COLUMN_EMAILADDRESS +" =?;";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int sqid = -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next())
				sqid = rs.getInt(User.COLUMN_SQID);
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
		
		return sqid;
	}
	
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
	
	
	// Forgot Password - Get SQAnswer
	public static String getSQAns(int userid) {
		String sql = "SELECT "+ User.COLUMN_SQANSWER +" FROM " + User.TABLE_NAME + " WHERE " +
				User.COLUMN_USERID +" =?;";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sqAnswer = "";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userid);
			rs = pstmt.executeQuery();
			if(rs.next())
				sqAnswer = rs.getString(User.COLUMN_SQANSWER);
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
		
		return sqAnswer;
	}
}
