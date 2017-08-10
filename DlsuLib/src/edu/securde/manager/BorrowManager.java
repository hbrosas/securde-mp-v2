package edu.securde.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import edu.securde.db.*;
import com.mysql.jdbc.Statement;
import edu.securde.beans.Borrow;
import edu.securde.beans.Review;
import edu.securde.beans.User;
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
  
}
