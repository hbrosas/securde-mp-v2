package edu.securde.beans;

public class Role {
	public static final String TABLE_NAME = "catalogtype";
	public static final String COLUMN_ROLEID = "roleid";
	public static final String COLUMN_ROLETYPE = "roletype";
	
	int id;
	String role;
	
	public int getId() {
		return id;
	}
	public String getRole() {
		return role;
	}
}
