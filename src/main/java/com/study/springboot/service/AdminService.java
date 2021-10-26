package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IBookListDao;
import com.study.springboot.dao.IBookReviewDao;
import com.study.springboot.dao.IMemberDao;
import com.study.springboot.dao.INoticeDao;
import com.study.springboot.dao.IQnADao;
import com.study.springboot.dto.BookListDto;
import com.study.springboot.dto.BookReviewDto;
import com.study.springboot.dto.MemberDto;
import com.study.springboot.dto.NoticeDto;
import com.study.springboot.dto.QnADto;

@Component
public class AdminService {

	@Autowired
	private IMemberDao MemberDao;
	@Autowired
	private IBookListDao BookListDao;
	@Autowired
	private IBookReviewDao BookReviewDao;
	@Autowired 
	private INoticeDao NoticeDao;
	@Autowired 
	private IQnADao QnADao; 
	
	
	// 관리자 로그인
	  public int adminLogin( String hp_ID, String hp_Password ) {
		  int result = 0;
		  
		  
		  int count = MemberDao.adminLogin( hp_ID, hp_Password );
		  if( count > 0 ) {
			  result = 1;
		  }
		  
		return result;
	  }
	
	  
	// 회원 목록 
	  public List<MemberDto> memberlist() {
		  List<MemberDto> memberlist = MemberDao.memberlist();
		  return memberlist;
	  }
	
	// 회원정보 불러오기
		  public List<MemberDto> memberlist_byIndex(String hp_ID) {
			  List<MemberDto> memberlist_byIndex = MemberDao.memberlist_byIndex( hp_ID );
			  return memberlist_byIndex;
		  }
	  
	// 도서 목록 
		  public List<BookListDto> booklist() {
			  List<BookListDto> booklist = BookListDao.booklist();
			  return booklist;
		  }
		  
		// 도서 정보 불러오기
		  public List<BookListDto> booklistbyIndex(int book_Index) {
			  List<BookListDto> booklistbyIndex = BookListDao.booklistbyIndex(book_Index);
			  
			  return booklistbyIndex;
		  }
		  
		// 국내도서 목록
			 public List<BookListDto> booksKorea() {
				  List<BookListDto> booksKorea = BookListDao.booksKorea();
				  return booksKorea;
			 }
		  
		 // 국외도서 목록
			  public List<BookListDto> booksOverseas() {
				  List<BookListDto> booksOverseas = BookListDao.booksOverseas();
				  return booksOverseas;
			  }


	// 책 리뷰 목록
	  public List<BookReviewDto> bookreviewlist(){
		  List<BookReviewDto> bookreviewlist = BookReviewDao.reviewlist();
		  System.out.println("service bookreviewlist:" + bookreviewlist);
		  return bookreviewlist;
	  }
	  
	// 책 리뷰 불러오기
		  public List<BookReviewDto> bookreviewbyIndex(int review_Index){
			  List<BookReviewDto> bookreviewbyIndex = BookReviewDao.bookreviewbyIndex(review_Index);
			  
			  return bookreviewbyIndex;
		  }
	  
	// 공지 목록
	  public List<NoticeDto> noticelist(){
		  List<NoticeDto> noticelist = NoticeDao.noticelist();
		  
		  return noticelist;
		  
	  }
	  
	  // 공지사항 내용 불러오기
	  public List<NoticeDto> noticebyIndex(int notice_Index){
		  List<NoticeDto> noticebyIndex = NoticeDao.noticebyIndex(notice_Index);
		  
		  return noticebyIndex;
	  }
	  
	  
	// 1:1 문의 내역 불러오기
		  public List<QnADto> qnabyIndex(int qna_Index){
			  List<QnADto> qnabyIndex = QnADao.qnabyIndex(qna_Index);
			  
			  return qnabyIndex;
		  }
	  
	  public List<QnADto> QnAlist(){
		  List<QnADto> qnalist = QnADao.QnAlist();
		  
		  return qnalist;
		  
	  }
	  // 유저의 qna 불러오기
	  public List<QnADto> qnalistByuser(String hp_ID){
		  
		  List<QnADto> qnalistByuser = QnADao.qnalistByuser(hp_ID);
		  
		  return qnalistByuser;
		  
	  }
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	
}
