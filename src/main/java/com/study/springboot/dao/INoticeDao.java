package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.NoticeDto;

@Mapper
public interface INoticeDao {
	
	// 공지사항 목록 
	  public List<NoticeDto> noticelist();
	  
	// 공지사항 내용 불러오기
		  public List<NoticeDto> noticebyIndex(int notice_Index);
	// 공지사항 추가하기
	  public int addNotice(String notice_Title, String notice_Content);
	// 공지사항 편집하기
	  public int updateNotice(int notice_Index, String notice_Title, String notice_Content);
	// 공지사항 삭제하기
	  public int deleteNotice(int notice_Index);	
	// 공지사항 조회수
	  public int countNotice(int count);

}
