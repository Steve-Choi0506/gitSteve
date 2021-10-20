package com.study.springboot.dto;

//import lombok.Data;
//@Data
public class BookReviewDto {
	private int		review_Index;
	private int 	book_Index;
	private int 	hp_Index;
	private String	book_Title;
	private String	review_name;
	private String	review_password;
	private String	book_review;

	public BookReviewDto() {	}

	public int getReview_Index() {
		return review_Index;
	}

	public void setReview_Index(int review_Index) {
		this.review_Index = review_Index;
	}

	public int getBook_Index() {
		return book_Index;
	}

	public void setBook_Index(int book_Index) {
		this.book_Index = book_Index;
	}

	public int getHp_Index() {
		return hp_Index;
	}

	public void setHp_Index(int hp_Index) {
		this.hp_Index = hp_Index;
	}

	public String getBook_Title() {
		return book_Title;
	}

	public void setBook_Title(String book_Title) {
		this.book_Title = book_Title;
	}

	public String getReview_name() {
		return review_name;
	}

	public void setReview_name(String review_name) {
		this.review_name = review_name;
	}

	public String getReview_password() {
		return review_password;
	}

	public void setReview_password(String review_password) {
		this.review_password = review_password;
	}

	public String getBook_review() {
		return book_review;
	}

	public void setBook_review(String book_review) {
		this.book_review = book_review;
	}

	
	
}

/*	review_Index        number(10) primary key, 
  	book_Index          number(6) not null,
  	hp_Index            number(6) not null,
  	book_Title          varchar2(20) not null,
  	review_name         varchar2(20) not null,
  	review_password     varchar2(20) not null,
  	book_review         varchar2(1000) not null	 */