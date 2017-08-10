package edu.securde.beans;

import java.io.Serializable;

public class MeetingRoom implements Serializable {
	public static final String TABLE_NAME = "meetingroom";
	public static final String COLUMN_ROOMID = "roomId";
	public static final String COLUMN_STATUSID = "statusId";
	public static final String COLUMN_ROOMTYPEID = "roomTypeId";
	public static final String COLUMN_STARTTIMESLOT = "startTimeslot";
	public static final String COLUMN_ENDTIMESLOT = "endTimeslot";
	

	int roomid, statusid, roomtypeid;
	String starttimeslot, endtimeslot;
	
	public MeetingRoom() {}
	
	public MeetingRoom(int roomid, int statusid, int roomtypeid, String starttimeslot, String endtimeslot) {
		super();
		this.roomid = roomid;
		this.statusid = statusid;
		this.roomtypeid = roomtypeid;
		this.starttimeslot = starttimeslot;
		this.endtimeslot = endtimeslot;
	}
	
	public int getRoomid() {
		return roomid;
	}

	public void setRoomid(int roomid) {
		this.roomid = roomid;
	}

	public int getStatusid() {
		return statusid;
	}

	public void setStatusid(int statusid) {
		this.statusid = statusid;
	}

	public int getRoomtypeid() {
		return roomtypeid;
	}

	public void setRoomtypeid(int roomtypeid) {
		this.roomtypeid = roomtypeid;
	}

	public String getStarttimeslot() {
		return starttimeslot;
	}

	public void setStarttimeslot(String starttimeslot) {
		this.starttimeslot = starttimeslot;
	}

	public String getEndtimeslot() {
		return endtimeslot;
	}

	public void setEndtimeslot(String endtimeslot) {
		this.endtimeslot = endtimeslot;
	}

	
}
