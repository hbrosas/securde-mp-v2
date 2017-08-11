package edu.securde.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.securde.beans.MeetingRoom;
import edu.securde.beans.Reservation;
import edu.securde.db.DBPool;

public class MeetingRoomManager {
    public static boolean addReservation(int roomtimeslotId, int userId, int statusId, String dateReserved) {
  		String sql = "INSERT INTO " + Reservation.TABLE_NAME + " ( "
  			    + Reservation.COLUMN_USERID + ", " + Reservation.COLUMN_ROOMTIMESLOTID 
  				+ ", " + Reservation.COLUMN_STATUSID + ", " + Reservation.COLUMN_DATERESERVED
  				+ " ) " + " VALUES(?,?,?,?);";

  		Connection conn = DBPool.getInstance().getConnection();
  		PreparedStatement pstmt = null;
  		boolean success = false;

  		try {
  			pstmt = conn.prepareStatement(sql);
  			pstmt.setInt(1, userId);
  			pstmt.setInt(2, roomtimeslotId);
  			pstmt.setInt(3, statusId);
  			pstmt.setString(4, dateReserved);
  			pstmt.executeUpdate();
  			success = true;
//  			reservation.setRoomtimeslotid(rs.getInt(Reservation.COLUMN_ROOMTIMESLOTID));
//  			reservation.setUserid(rs.getInt(Reservation.COLUMN_USERID));
//  			reservation.setDatereserved(rs.getString(Reservation.COLUMN_DATERESERVED));

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
  		return success;
  	}
  public static boolean isReserved(int roomid) {
  		String sql = "SELECT " + MeetingRoom.TABLE_NAME + " WHERE "
  			    + MeetingRoom.COLUMN_ROOMID + " LIKE ?"
  				+ " AND " + " AND " + MeetingRoom.COLUMN_STATUSID + " LIKE ?;";

  		Connection conn = DBPool.getInstance().getConnection();
  		PreparedStatement pstmt = null;
  		ResultSet rs = null;

  		try {
  			pstmt = conn.prepareStatement(sql);
  			pstmt.setInt(1, roomid);
  			pstmt.setInt(2, 2);
  			rs = pstmt.executeQuery();

  			if(rs.next()) {
  				return true;
  			}

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
  		return false;
  	}
//
//    public static ArrayList<Reservation> GetAllReservation(Reservation reservation) {
//      String sql = "SELECT " + Reservation.TABLE_NAME + " WHERE "
//            + Reservation.COLUMN_RESERVEID + " LIKE ?"
//          + " AND " + Reservation.COLUMN_ACCOUNTID + " LIKE ? " + " AND " + Reservation.COLUMN_DATERESERVED
//          + " LIKE ?;";
//
//      Connection conn = DbPool.getInstance().getConnection();
//      PreparedStatement pstmt = null;
//      ResultSet rs = null;
//      ArrayList<Reservation> Reservation = new ArrayList<>();
//
//      try {
//        pstmt = conn.prepareStatement(sql);
//        pstmt.setInt(1, reservation.getReserveid());
//        pstmt.setInt(2, reservation.);
//        pstmt.setString(3, reservation.getDateReserved());
//        rs = pstmt.executeQuery();
//
//        Reservation.add(new Reservation(rs.getInt(reservation.COLUMN_RESERVEID),
//                            rs.getInt(reservation.COLUMN_ROOMID),
//                            rs.getInt(reservation.COLUMN_ACCOUNTID),
//                            rs.getString(reservation.COLUMN_DATERESERVED)));
//
//        return Reservation;
//      } catch (SQLException e) {
//        // TODO Auto-generated catch block
//        e.printStackTrace();
//      } finally {
//        try {
//          pstmt.close();
//          conn.close();
//        } catch (SQLException e) {
//          // TODO Auto-generated catch block
//          e.printStackTrace();
//        }
//      }
//      return null;
//    }
}
