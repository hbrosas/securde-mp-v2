package edu.securde.beans;

import java.io.Serializable;

public class Reservation implements Serializable {
	public static final String TABLE_NAME = "reservation";
	public static final String COLUMN_RESERVEID = "reserveid";
	public static final String COLUMN_ROOMTIMESLOTID = "roomtimeslotid";
	public static final String COLUMN_USERID = "userid";
	public static final String COLUMN_DATERESERVED = "datereserved";
	public static final String COLUMN_STATUSID = "statusid";
	
	int reserveid, roomtimeslotid, statusid;
	String datereserved;
	
	public Reservation() {
		
	}
	
	public Reservation(int reserveid, int roomtimeslotid, int statusid, String datereserved) {
		super();
		this.reserveid = reserveid;
		this.roomtimeslotid = roomtimeslotid;
		this.statusid = statusid;
		this.datereserved = datereserved;
	}

	
	public int getReserveid() {
		return reserveid;
	}

	public void setReserveid(int reserveid) {
		this.reserveid = reserveid;
	}

	public int getRoomtimeslotid() {
		return roomtimeslotid;
	}

	public void setRoomtimeslotid(int roomtimeslotid) {
		this.roomtimeslotid = roomtimeslotid;
	}

	public int getStatusid() {
		return statusid;
	}

	public void setStatusid(int statusid) {
		this.statusid = statusid;
	}

	public String getDatereserved() {
		return datereserved;
	}

	public void setDatereserved(String datereserved) {
		this.datereserved = datereserved;
	}
	
}
