package edu.securde.beans;

public class SecurityQuestion {
	public static final String TABLE_NAME = "secretquestion";
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
	
	public void setID(int id) {
		this.id = id;
	}
	
	public void setQuestion(String question) {
		this.question = question;
	}
	
}
