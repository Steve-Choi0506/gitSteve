package com.study.springboot.dao;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.QnA_AnswerDto;

@Mapper
public interface IQnA_AnswerDao {

	
	
  	// 1:1 문의 답변하기
  	  public int reply_QnAnwer( QnA_AnswerDto qna_Answer_dto );
  	// 1:1 문의 답변 편집하기
  	  public void updateReplyAnswer( int answer_Index, String qna_Answer );
}
