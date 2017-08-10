package edu.securde.beans;

public class MeetingRoomType {
	public static final String TABLE_NAME = "meetingroomtype";
	public static final String COLUMN_MEETINGROOMID = "roomid";
	public static final String COLUMN_MEETINGROOMTYPE = "roomtype";
	
	int id;
	String type;
	
	public int getId() {
		return id;
	}
	public String getType() {
		return type;
	}
}
