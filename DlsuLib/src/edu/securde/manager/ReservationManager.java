package edu.securde.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.securde.beans.Reservation;	
import edu.securde.db.DBPool;

public class ReservationManager {
    public static ArrayList<Reservation> getReservationWithDate(String date) {
        String sql = "SELECT * FROM " + Reservation.TABLE_NAME + " WHERE "+ Reservation.COLUMN_DATERESERVED+" LIKE '"+ date +"'";

        Connection conn = DBPool.getInstance().getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList<Reservation> reservations = new ArrayList<>();

        try {
          pstmt = conn.prepareStatement(sql);
//          pstmt.setString(1, date);
          rs = pstmt.executeQuery();
          
          while(rs.next()) {
        	  Reservation reservation = new Reservation();
        	  reservation.setReserveid(rs.getInt(Reservation.COLUMN_RESERVEID));
        	  reservation.setUserid(rs.getInt(Reservation.COLUMN_USERID));
        	  reservation.setDatereserved(rs.getString(Reservation.COLUMN_DATERESERVED));
        	  reservation.setRoomtimeslotid(rs.getInt(Reservation.COLUMN_ROOMTIMESLOTID));
        	  reservation.setStatusid(rs.getInt(Reservation.COLUMN_STATUSID));
        	  reservations.add(reservation);
          }
          
          return reservations;
          
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
        return null;
      }
    
    public static ArrayList<String> getAllDatesReserved() {
        String sql = "SELECT * FROM " + Reservation.TABLE_NAME + " ; ";

        Connection conn = DBPool.getInstance().getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList<String> dates = new ArrayList<>();

        try {
          pstmt = conn.prepareStatement(sql);
          rs = pstmt.executeQuery();
          
          while(rs.next()) {
        	  dates.add(rs.getString(Reservation.COLUMN_DATERESERVED));
          }
          
          return dates;
          
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
        return null;
      }
    
    public static boolean EditStatusId(int reserveid, int status) {
        String sql = "UPDATE " + Reservation.TABLE_NAME + " SET " + Reservation.COLUMN_STATUSID + "= ?" + " WHERE "
        			+ Reservation.COLUMN_RESERVEID + "= ?;";

        Connection conn = DBPool.getInstance().getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean success = false;

        try { 
          pstmt = conn.prepareStatement(sql);
          rs = pstmt.executeQuery();
          
          if(rs.next()) {
        	  success = true;
          }
          
          return success;
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
    
    
//    public static boolean reserveRoom(int roomid, int userid, int roomtimeslotid, String date) {
//    	String sql = "INSERT INTO " + Reservation.TABLE_NAME + "( " + Reservation.COLUMN_ROOMTIMESLOTID + ", " 
//    																+ Reservation.COLUMN_USERID + ", " 
//    																+ Reservation.COLUMN_ROOMTIMESLOTID + ", "
//    																+ Reservation.COLUMN_DATERESERVED + ", "
//    																+ Reservation.COLUMN_STATUSID + ") " 
//    																+ " VALUES (?,?,?,?,-1);";
//    	
//        Connection conn = DBPool.getInstance().getConnection();
//        PreparedStatement pstmt = null;
//        ResultSet rs = null;
//        boolean success = false;
//
//        try {
//          pstmt = conn.prepareStatement(sql);
//          pstmt.setInt(1, roomid);
//          pstmt.setInt(2, userid);
//          pstmt.setInt(3, roomtimeslotid);
//          pstmt.setString(4, date);
//          rs = pstmt.executeQuery();
//          	if(rs.next()) {
//          		success = true;
//          } 
//        }
//          	catch (SQLException e) {
//          // TODO Auto-generated catch block
//          e.printStackTrace();
//        } finally {
//          try {
//            pstmt.close();
//            conn.close();
//          } catch (SQLException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//          }
//        }
//        return success;
//      }
    
    public static boolean addReservation(int roomtimeslotId, int userId, int statusId, String dateReserved) {
  		String sql = "INSERT INTO " + Reservation.TABLE_NAME + " ( "
  			    + Reservation.COLUMN_USERID + ", " + Reservation.COLUMN_ROOMTIMESLOTID 
  				+ ", " + Reservation.COLUMN_STATUSID + ", " + Reservation.COLUMN_DATERESERVED
  				+ " ) " + " VALUES(?,?,?,?);";

  		Connection conn = DBPool.getInstance().getConnection();
  		PreparedStatement pstmt = null;
  		ResultSet rs = null;
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
    
    
  }
   
