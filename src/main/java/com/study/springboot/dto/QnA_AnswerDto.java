package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class QnA_AnswerDto {
	private int		answer_Index;
	private int		qna_Index;
	private String	qna_Answer;
	private Date 	answer_Date;
	
	public QnA_AnswerDto() {		}

	public int getAnswer_Index() {
		return answer_Index;
	}

	public void setAnswer_Index(int answer_Index) {
		this.answer_Index = answer_Index;
	}

	public int getQna_Index() {
		return qna_Index;
	}

	public void setQna_Index(int qna_Index) {
		this.qna_Index = qna_Index;
	}

	public String getQna_Answer() {
		return qna_Answer;
	}

	public void setQna_Answer(String qna_Answer) {
		this.qna_Answer = qna_Answer;
	}

	public Date getAnswer_Date() {
		return answer_Date;
	}

	public void setAnswer_Date(Date answer_Date) {
		this.answer_Date = answer_Date;
	}
	
}

/*	answer_Index        number(6) primary key,
  	qna_Index           number(6) not null, 
  	qna_Answer          varchar2(1000) not null,
  	answer_Date         Date		*/