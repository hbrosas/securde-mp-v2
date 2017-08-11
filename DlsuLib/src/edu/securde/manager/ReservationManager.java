package edu.securde.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.securde.beans.Reservation;
import edu.securde.db.DBPool;

public class ReservationManager {
    public static ArrayList<String> getReservationWithDate(String date) {
        String sql = "SELECT * FROM " + Reservation.TABLE_NAME + " WHERE dateReserved LIKE " + "%?%;";

        Connection conn = DBPool.getInstance().getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList<String> dates = new ArrayList<>();

        try {
          pstmt = conn.prepareStatement(sql);
          pstmt.setString(1, date);
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
    
    public static boolean reserveRoom(int roomid, int userid, int roomtimeslotid, String date) {
    	String sql = "INSERT INTO " + Reservation.TABLE_NAME + "( " + Reservation.COLUMN_ROOMTIMESLOTID + ", " 
    																+ Reservation.COLUMN_USERID + ", " 
    																+ Reservation.COLUMN_ROOMTIMESLOTID + ", "
    																+ Reservation.COLUMN_DATERESERVED + ", "
    																+ Reservation.COLUMN_STATUSID + ") " 
    																+ " VALUES (?,?,?,?,-1);";
    	
        Connection conn = DBPool.getInstance().getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean success = false;

        try {
          pstmt = conn.prepareStatement(sql);
          pstmt.setInt(1, roomid);
          pstmt.setInt(2, userid);
          pstmt.setInt(3, roomtimeslotid);
          pstmt.setString(4, date);
          rs = pstmt.executeQuery();
          	if(rs.next()) {
          		success = true;
          } 
        }
          	catch (SQLException e) {
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
   
