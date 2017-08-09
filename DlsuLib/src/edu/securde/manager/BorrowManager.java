package edu.securde.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import edu.securde.db.*;
import com.mysql.jdbc.Statement;
import edu.securde.beans.Borrow;
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

}
