package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeDto {
	private int		notice_Index;
	private String	notice_Title;
	private String	notice_Content;
	private Date	notice_Date;
	private int		notice_Count;

	public NoticeDto() {	}

	public int getNotice_Index() {
		return notice_Index;
	}

	public void setNotice_Index(int notice_Index) {
		this.notice_Index = notice_Index;
	}

	public String getNotice_Title() {
		return notice_Title;
	}

	public void setNotice_Title(String notice_Title) {
		this.notice_Title = notice_Title;
	}

	public String getNotice_Content() {
		return notice_Content;
	}

	public void setNotice_Content(String notice_Content) {
		this.notice_Content = notice_Content;
	}

	public Date getNotice_Date() {
		return notice_Date;
	}

	public void setNotice_Date(Date notice_Date) {
		this.notice_Date = notice_Date;
	}

	public int getNotice_Count() {
		return notice_Count;
	}

	public void setNotice_Count(int notice_Count) {
		this.notice_Count = notice_Count;
	}

}

/* 	notice_Index      number(6),
  	notice_Title      varchar2(100) not null,
  	notice_Content    varchar2(1000) not null,
  	notice_Date       date default sysdate,
  	notice_Count      number(6)	 */
