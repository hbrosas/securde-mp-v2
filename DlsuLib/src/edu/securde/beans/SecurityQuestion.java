package edu.securde.beans;

public class SecurityQuestion {
	public static final String TABLE_NAME = "meetingroomtype";
	public static final String COLUMN_QUESTIONID = "questionid";
	public static final String COLUMN_QUESTION = "question";
	
	int id;
	String question;
	
	public int getId() {
		return id;
	}
	public String getQuestion() {
		return question;
	}
}
