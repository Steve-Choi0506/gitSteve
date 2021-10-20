package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class QnADto {
	private int 	qna_Index;
	private int		hp_Index;
	private String	hp_ID;
	private String	qna_Title;
	private String	qna_Content;
	private int 	answer_Check;
	private Date 	qna_Date;

	public QnADto()	{	}

	public int getQna_Index() {
		return qna_Index;
	}

	public void setQna_Index(int qna_Index) {
		this.qna_Index = qna_Index;
	}

	public int getHp_Index() {
		return hp_Index;
	}

	public void setHp_Index(int hp_Index) {
		this.hp_Index = hp_Index;
	}

	public String getHp_ID() {
		return hp_ID;
	}

	public void setHp_ID(String hp_ID) {
		this.hp_ID = hp_ID;
	}

	public String getQna_Title() {
		return qna_Title;
	}

	public void setQna_Title(String qna_Title) {
		this.qna_Title = qna_Title;
	}

	public String getQna_Content() {
		return qna_Content;
	}

	public void setQna_Content(String qna_Content) {
		this.qna_Content = qna_Content;
	}

	public int getAnswer_Check() {
		return answer_Check;
	}

	public void setAnswer_Check(int answer_Check) {
		this.answer_Check = answer_Check;
	}

	public Date getQna_Date() {
		return qna_Date;
	}

	public void setQna_Date(Date qna_Date) {
		this.qna_Date = qna_Date;
	}

}

/*	qna_Index           number(6) primary key,
  	hp_Index            number(6) not null,
  	hp_ID               varchar2(20) not null,
  	qna_Title           varchar2(20) not null,
  	qna_Content         varchar2(300) not null,
  	answer_Check        number(2) not null,
  	qna_Date            Date 	*/