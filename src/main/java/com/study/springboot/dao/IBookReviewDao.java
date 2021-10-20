package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.BookReviewDto;

@Mapper
public interface IBookReviewDao {
	
	// 도서 리뷰 목록
	  public List<BookReviewDto> reviewlist();
	  
	// 도서 리뷰 불러오기
		  public List<BookReviewDto> bookreviewbyIndex(int review_Index);
	// 도서 리뷰 추가
	  public int addBookReview(int book_Index,int hp_Index, String book_Title, 
				String review_name, String review_password, String book_review);
	// 도서 리뷰 편집  
	  public int updateBookReview( int review_Index,int book_Index, int hp_Index, String book_Title, 
			  					String review_name, String review_password, String book_review);
	// 도서 리뷰 삭제
  	  public int deleteBookReview( int review_Index );

  	  
  	  public int writeReview(int review_Index,int book_Index, int hp_Index, String book_Title,
				String review_name, String review_password, String book_review);
    
}
