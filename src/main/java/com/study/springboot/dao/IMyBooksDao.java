package com.study.springboot.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.BookListDto;
import com.study.springboot.dto.MyBooksDto;

@Mapper
public interface IMyBooksDao {

	

	// 도서 목록
		  public ArrayList<BookListDto> booklist(); 
		// 도서 추가
		  public int addBook( BookListDto book_dto );
		// 도서 편집  
		  public void updateBook( String book_Title, String book_Writer, String book_Company, 
				  					String book_Image, String book_Content, String book_Introduce );
		// 도서 삭제
	  	  public void deleteBook( int book_Index );
	   // 즐겨찾기 목록
		public List<MyBooksDto> mybookslist();
		
		public void addfavor(int hp_Index, int book_Index, String book_Title, String book_Writer, String filename);
		
		public void deletefavor(int hp_Index);
}
