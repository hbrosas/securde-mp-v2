package edu.securde.beans;

public class CatalogType {
	public static final String TABLE_NAME = "catalogtype";
	public static final String COLUMN_CATALOGID = "catalogid";
	public static final String COLUMN_CATALOGTYPE = "catalogtype";
	
	int id;
	String type;
	
	public int getId() {
		return id;
	}
	public String getType() {
		return type;
	}
}
