package edu.securde.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Statement;

import edu.securde.beans.Borrow;
import edu.securde.beans.User;
import edu.securde.db.DBPool;
public class BorrowManager {
  public static int Borrow(int catalogId, User user) {
	  String expectedReturn = "NOW()";
	  if(user.getRoleid() == 1) {
		  expectedReturn = "NOW() + INTERVAL 7 DAY";
	  }else if(user.getRoleid() == 5) {
		  expectedReturn = "NOW() + INTERVAL 30 DAY";
	  }
	  String sql = "INSERT INTO " + Borrow.TABLE_NAME
				+ " (" + Borrow.COLUMN_CATALOGID + ", "
				 + Borrow.COLUMN_USERID + ", "
			   + Borrow.COLUMN_STATUSID + ", "
			   + Borrow.COLUMN_DATEBORROWED + ", "
			   + Borrow.COLUMN_DATEEXPECTRETURN + " "
			   + ") VALUES (?, ?, ?, NOW(), "+expectedReturn+");";

		Connection conn = DBPool.getInstance().getConnection();
		PreparedStatement pstmt = null;
		int borrowID = 0;
		try {
			pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			pstmt.setInt(1, catalogId);
			pstmt.setInt(2, user.getUserid());
			pstmt.setInt(3, 2);
			pstmt.executeUpdate();
			
			CatalogManager.ChangeStatus(catalogId, 2);
			
			try (ResultSet generatedKeys = pstmt.getGeneratedKeys()) {
	            if (generatedKeys.next()) {
	            	borrowID = generatedKeys.getInt(1);
	            }
	            else {
	                throw new SQLException("Borrowing catalog failed.");
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

}
