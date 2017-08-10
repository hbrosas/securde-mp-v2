package edu.securde.beans;

public class SecurityQuestion {
	public static final String TABLE_NAME = "secretquestions";
	public static final String COLUMN_QUESTIONID = "sqid";
	public static final String COLUMN_QUESTION = "squestion";
	
	int id;
	String question;
	
	public int getId() {
		return id;
	}
	public String getQuestion() {
		return question;
	}
	
	
}
