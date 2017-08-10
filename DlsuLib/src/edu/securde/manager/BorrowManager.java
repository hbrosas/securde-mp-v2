package edu.securde.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import edu.securde.db.*;
import com.mysql.jdbc.Statement;
import edu.securde.beans.Borrow;
import edu.securde.beans.Catalog;
public class BorrowManager {
  public static int Borrow(Borrow brwhistory) {
		String sql = "INSERT INTO " + Borrow.TABLE_NAME
				+ " (" + Borrow.COLUMN_CATALOGID + ", "
			   + Borrow.COLUMN_STATUSID + ", "
			   + Borrow.COLUMN_DATEBORROWED + ", "
			   + Borrow.COLUMN_DATEEXPECTRETURN + ", "
			   + Borrow.COLUMN_STATUSID + " "
			   + ") VALUES (?, ?, ?, ?, ?);";

		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		int borrowID = 0;
		try {
			pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			pstmt.setInt(1, brwhistory.getCatalogid());
			pstmt.setInt(2, brwhistory.getStatusid());
			pstmt.setString(3, brwhistory.getDateborrowed());
			pstmt.setString(4, brwhistory.getDateexpectreturn());
			pstmt.setInt(5, brwhistory.getStatusid());
			pstmt.executeUpdate();

			try (ResultSet generatedKeys = pstmt.getGeneratedKeys()) {
	            if (generatedKeys.next()) {
	            	borrowID = generatedKeys.getInt(1);
	            }
	            else {
	                throw new SQLException("Creating user failed, no ID obtained.");
	            }
	        }

			return borrowID;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return -1;
	}
  
   public static ArrayList<Borrow> getAllBorrowHistory(){
	   String sql = "SELECT * FROM " + Borrow.TABLE_NAME + ";";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Borrow> borrows = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				Borrow borrow = new Borrow();
				borrow.setBorrowid(rs.getInt(Borrow.COLUMN_BORROWID));
				borrow.setUserid(rs.getInt(Borrow.COLUMN_USERID));
				borrow.setCatalogid(rs.getInt(Borrow.COLUMN_CATALOGID));
				borrow.setDateborrowed(rs.getString(Borrow.COLUMN_DATEBORROWED));
				borrow.setDateexpectreturn(rs.getString(Borrow.COLUMN_DATEEXPECTRETURN));
				borrow.setStatusid(rs.getInt(Borrow.COLUMN_STATUSID));
				borrows.add(borrow);
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

		return borrows;
	}
   
   public static int BorrowerUserid() {
	   String sql = "SELECT * FROM " + Borrow.TABLE_NAME + ";";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int userid = -1;

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				userid = rs.getInt(Borrow.COLUMN_USERID);
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
   
   public static boolean hasBorrowed(int catalogid, int userid) {
	   	String sql = "SELECT * FROM " + Borrow.TABLE_NAME + " WHERE " + Borrow.COLUMN_CATALOGID + " = ? "
	   				+ " and " + Borrow.COLUMN_USERID + " = ? "+";";
		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean hasborrowed = false;

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				hasborrowed = true;
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

		return hasborrowed;
	}
    
   
   
}
