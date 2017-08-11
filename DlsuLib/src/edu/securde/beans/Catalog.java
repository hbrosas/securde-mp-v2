package edu.securde.beans;

import java.io.Serializable;

public class Catalog implements Serializable {
	public static final String TABLE_NAME = "catalog";
	public static final String COLUMN_CATALOGID = "catalogid";
	public static final String COLUMN_TITLE = "title";
	public static final String COLUMN_AUTHOR = "author";
	public static final String COLUMN_YEAR = "year";
	public static final String COLUMN_PUBLISHER = "publisher";
	public static final String COLUMN_LOCATION = "location";
	public static final String COLUMN_CATALOGTYPE = "catalogType";
	public static final String COLUMN_STATUS = "status";
	public static final String COLUMN_TAGS = "tags";

	int catalogid, status, year, catalogtype;
	String title, author, publisher, location, tags;
	
	public Catalog() {
	}
	
	public Catalog(int catalogid, int status, int year, int catalogtype, String title, String author, String publisher,
			String location, String tags) {
		super();
		this.catalogid = catalogid;
		this.status = status;
		this.year = year;
		this.catalogtype = catalogtype;
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.location = location;
		this.tags = tags;
	}
	
	public int getCatalogid() {
		return catalogid;
	}

	public void setCatalogid(int catalogid) {
		this.catalogid = catalogid;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getCatalogtype() {
		return catalogtype;
	}

	public void setCatalogtype(int catalogtype) {
		this.catalogtype = catalogtype;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}
	
}
