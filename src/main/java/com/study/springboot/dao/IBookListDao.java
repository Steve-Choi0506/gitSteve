package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.BookListDto;

@Mapper
public interface IBookListDao {

	// 도서 목록
	public List<BookListDto> booklist();

	
	// 도서 정보 불러오기
		public List<BookListDto> booklistbyIndex(int book_Index);
		
	public BookListDto contentView(int book_Index);

	
	// 도서 추가
	public void addBook(String book_Title, String book_Writer, String book_Company, String filename,
			String book_Content, String book_Introduce, int book_Category);

	// 도서 편집
	public void updateBook(int book_Index, String book_Title, String book_Writer, String book_Company, String filename,
			String book_Content, String book_Introduce, int book_Category);

	// 도서 삭제
	public int deleteBook(int book_Index);

	public int write(int book_Index, String book_Title, String book_Writer, String book_Company, String book_Image,
			String book_Content, String book_Introduce, int book_Category);

}
