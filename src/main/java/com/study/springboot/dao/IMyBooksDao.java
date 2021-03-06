package com.study.springboot.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

import com.study.springboot.dto.BookListDto;
import com.study.springboot.dto.MyBooksDto;
import com.study.springboot.dto.QnADto;

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
		  
		// 즐겨찾기 목록 : 관리자 페이지 
		  public List<MyBooksDto> mybookslist();
		  
		// 즐겨찾기 목록 : 사용자 페이지	- 회원아이디로
			public List<MyBooksDto> mybookslist_ByUser( String hp_ID );
			

	// 즐겨찾기 추가 : 관리자 페이지	
		public void addfavor( int hp_Index, String hp_ID, int book_Index, String book_Title );
	
	// 즐겨찾기 추가 : 사용자 페이지	
		public void addFavorByUser( int hp_Index, String hp_ID, int book_Index, String book_Title, String book_Writer, String book_Image );
		
	// 즐겨찾기 삭제 : 관리자 페이지	
		public void deletefavor( int favor_Index );
	
	// 즐겨찾기 삭제 : 사용자 페이지
		public void deletefavorByUser( int favor_Index );
		
	
}
