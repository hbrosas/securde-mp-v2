package edu.securde.beans;

import java.io.Serializable;

public class User implements Serializable{
	public static final String TABLE_NAME = "user";
	public static final String COLUMN_USERID = "userId";
	public static final String COLUMN_USERNAME = "username";
	public static final String COLUMN_ROLEID = "roleId";
	public static final String COLUMN_FIRSTNAME = "firstname";
	public static final String COLUMN_MIDDLENAME = "middlename";
	public static final String COLUMN_LASTNAME = "lastname";	
	public static final String COLUMN_PASSWORD = "password";
	public static final String COLUMN_EMAILADDRESS = "emailAddress";
	public static final String COLUMN_IDNUMBER = "idNumber";
	public static final String COLUMN_SQID = "SQId";
	public static final String COLUMN_SQANSWER = "SQAnswer";
	public static final String COLUMN_BIRTHDATE = "birthdate";
	public static final String COLUMN_BIRTHMONTH = "birthmonth";
	public static final String COLUMN_BIRTHYEAR = "birthyear";
	
	
	
	int userid, roleid, sqid, birthdate, birthmonth, birthyear;
	String username, password, emailaddress, sqanswer, idnumber;
	
	public User() {
		
	}
	
	public User(int userid, int roleid, int sqid, int birthdate, int birthmonth, int birthyear, String username,
			String password, String emailaddress, String sqanswer, String idnumber) {
		super();
		this.userid = userid;
		this.roleid = roleid;
		this.sqid = sqid;
		this.birthdate = birthdate;
		this.birthmonth = birthmonth;
		this.birthyear = birthyear;
		this.username = username;
		this.password = password;
		this.emailaddress = emailaddress;
		this.sqanswer = sqanswer;
		this.idnumber = idnumber;
	}
	
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getRoleid() {
		return roleid;
	}

	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}

	public int getSqid() {
		return sqid;
	}

	public void setSqid(int sqid) {
		this.sqid = sqid;
	}

	public int getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(int birthdate) {
		this.birthdate = birthdate;
	}

	public int getBirthmonth() {
		return birthmonth;
	}

	public void setBirthmonth(int birthmonth) {
		this.birthmonth = birthmonth;
	}

	public int getBirthyear() {
		return birthyear;
	}

	public void setBirthyear(int birthyear) {
		this.birthyear = birthyear;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmailaddress() {
		return emailaddress;
	}

	public void setEmailaddress(String emailaddress) {
		this.emailaddress = emailaddress;
	}

	public String getSqanswer() {
		return sqanswer;
	}

	public void setSqanswer(String sqanswer) {
		this.sqanswer = sqanswer;
	}

	public String getIdnumber() {
		return idnumber;
	}

	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}
	
	
	
	
}
