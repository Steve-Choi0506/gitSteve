package com.study.springboot.dto;

import lombok.Data;

@Data
public class MyBooksDto {
	private int 	hp_Index;
	private int 	book_Index;
	private String	book_Title;
	private String	book_Writer;
	private String	book_Image;
	
	public MyBooksDto() {	}

	public int getHp_Index() {
		return hp_Index;
	}

	public void setHp_Index(int hp_Index) {
		this.hp_Index = hp_Index;
	}

	public int getBook_Index() {
		return book_Index;
	}

	public void setBook_Index(int book_Index) {
		this.book_Index = book_Index;
	}

	public String getBook_Title() {
		return book_Title;
	}

	public void setBook_Title(String book_Title) {
		this.book_Title = book_Title;
	}

	public String getBook_Writer() {
		return book_Writer;
	}

	public void setBook_Writer(String book_Writer) {
		this.book_Writer = book_Writer;
	}

	public String getBook_Image() {
		return book_Image;
	}

	public void setBook_Image(String book_Image) {
		this.book_Image = book_Image;
	}

}
/*	hp_Index            number(6) primary key,
  	book_Index          number(6) not null,
  	book_Title          varchar2(20) not null,
  	book_Writer         varchar2(20) not null,
  	book_Image          varchar2(100) not null	 */

