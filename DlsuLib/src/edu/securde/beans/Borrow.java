package edu.securde.beans;

import java.io.Serializable;

public class Borrow implements Serializable {
	public static final String TABLE_NAME = "borrow";
	public static final String COLUMN_BORROWID = "borrowId";
	public static final String COLUMN_USERID = "userId";
	public static final String COLUMN_CATALOGID = "catalogId";
	public static final String COLUMN_DATEBORROWED = "DateBorrowed";
	public static final String COLUMN_DATEEXPECTRETURN = "dateExpectReturn";
	public static final String COLUMN_STATUSID = "statusId";
	
	int borrowid, userid, catalogid, statusid;
	String dateborrowed, dateexpectreturn;
	
	public Borrow() {}
	
	public Borrow(int borrowid, int userid, int catalogid, int statusid, String dateborrowed, String dateexpectreturn) {
		super();
		this.borrowid = borrowid;
		this.userid = userid;
		this.catalogid = catalogid;
		this.statusid = statusid;
		this.dateborrowed = dateborrowed;
		this.dateexpectreturn = dateexpectreturn;
	}
	
	public int getBorrowid() {
		return borrowid;
	}
	
	public void setBorrowid(int borrowid) {
		this.borrowid = borrowid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getCatalogid() {
		return catalogid;
	}

	public void setCatalogid(int catalogid) {
		this.catalogid = catalogid;
	}

	public int getStatusid() {
		return statusid;
	}

	public void setStatusid(int statusid) {
		this.statusid = statusid;
	}

	public String getDateborrowed() {
		return dateborrowed;
	}

	public void setDateborrowed(String dateborrowed) {
		this.dateborrowed = dateborrowed;
	}

	public String getDateexpectreturn() {
		return dateexpectreturn;
	}

	public void setDateexpectreturn(String dateexpectreturn) {
		this.dateexpectreturn = dateexpectreturn;
	}

	
	
	
	
}	
