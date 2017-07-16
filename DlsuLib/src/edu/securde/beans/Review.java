package edu.securde.beans;

public class Review {
	public static final String TABLE_NAME = "review";
	public static final String COLUMN_REVIEWID = "reviewId";
	public static final String COLUMN_CATALOGID = "catalogId";
	public static final String COLUMN_USERID = "userId";
	public static final String COLUMN_REVIEW = "review";
	public static final String COLUMN_DATEREVIEWED = "dateReviewed";
	
	int reviewid, catalogid, userid;
	String review, datereviewed;
	
	public Review() {
		
	}
	
	public Review(int reviewid, int catalogid, int userid, String review, String datereviewed) {
		super();
		this.reviewid = reviewid;
		this.catalogid = catalogid;
		this.userid = userid;
		this.review = review;
		this.datereviewed = datereviewed;
	}
	
	public int getReviewid() {
		return reviewid;
	}

	public void setReviewid(int reviewid) {
		this.reviewid = reviewid;
	}

	public int getCatalogid() {
		return catalogid;
	}

	public void setCatalogid(int catalogid) {
		this.catalogid = catalogid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getDatereviewed() {
		return datereviewed;
	}

	public void setDatereviewed(String datereviewed) {
		this.datereviewed = datereviewed;
	}

}
