package edu.securde.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.securde.beans.MeetingRoom;
import edu.securde.beans.MeetingRoomType;
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

    public static ArrayList<MeetingRoom> GetAllRoomSlots() {
      String sql = "SELECT * FROM "+ MeetingRoom.TABLE_NAME +";";

      Connection conn = DBPool.getInstance().getConnection();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      ArrayList<MeetingRoom> rooms = new ArrayList<MeetingRoom>();

      try {
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();

        while(rs.next()) {
        	MeetingRoom room = new MeetingRoom();
            room.setRoomid(rs.getInt(MeetingRoom.COLUMN_ROOMID));
            room.setRoomtypeid(rs.getInt(MeetingRoom.COLUMN_ROOMTYPEID));
            room.setStatusid(rs.getInt(MeetingRoom.COLUMN_STATUSID));
            room.setStarttimeslot(rs.getString(MeetingRoom.COLUMN_STARTTIMESLOT));
            room.setEndtimeslot(rs.getString(MeetingRoom.COLUMN_ENDTIMESLOT));
            rooms.add(room);
        }

        return rooms;
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
    
    public static ArrayList<MeetingRoomType> GetAllMeetingRoomType() {
        String sql = "SELECT * FROM "+ MeetingRoomType.TABLE_NAME +";";

        Connection conn = DBPool.getInstance().getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList<MeetingRoomType> types = new ArrayList<MeetingRoomType>();

        try {
          pstmt = conn.prepareStatement(sql);
          rs = pstmt.executeQuery();

          while(rs.next()) {
        	  MeetingRoomType roomType = new MeetingRoomType();
              roomType.setId(rs.getInt(MeetingRoomType.COLUMN_MEETINGROOMID));
              roomType.setType(rs.getString(MeetingRoomType.COLUMN_MEETINGROOMTYPE));
              types.add(roomType);
              return types;
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
        return null;
      }
}
