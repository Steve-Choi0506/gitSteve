package com.study.springboot.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.study.springboot.dto.MemberDto;

@Mapper
public interface IMemberDao {
	public int join( MemberDto member_dto );
	public int userLogin( String hp_ID, String hp_Password );
	public int idCheck( String hp_ID );
	public List<MemberDto> findID( String hp_Name, String hp_Email );
	public List<MemberDto> findPassword( String hp_Name, String hp_ID, String hp_Email );
	// 회원 목록
    public List<MemberDto> memberlist();

  //회원 정보 불러오기
    public List<MemberDto> memberlist_byIndex(String hp_ID);
    
    public int adminLogin(String hp_ID,String hp_Password);
    
    public int userjoin(String hp_ID, String hp_Password, String hp_Name,
			int hp_Birthday_Year, int hp_Birthday_Month, int hp_Sex, 
			String hp_Email, String hp_Phone, int hp_Ticket, int hp_Auth);
    
 // 유저 추가
	  public int addMember(String hp_ID, String hp_Password, String hp_Name,
				int hp_Birthday_Year, int hp_Birthday_Month, int hp_Sex, 
				String hp_Email, String hp_Phone, int hp_Ticket, int hp_Auth);
	// 유저 편집  
	  public int updateMember( int hp_Index, String hp_ID, String hp_Password, String hp_Name, 
			  					int hp_Birthday_Year, int hp_Birthday_Month, int hp_Sex, 
			  					String hp_Email, String hp_Phone, int hp_Ticket, int hp_Auth);
	// 유저 삭제
	  public int deleteMember( int hp_Index );

	  
	  public int writeMember(int hp_Index, String hp_ID, String hp_Password, String hp_Name,
				int hp_Birthday_Year, int hp_Birthday_Month, int hp_Sex,
				String hp_Email, String hp_Phone, int hp_Ticket, int hp_Auth);
	
    
    
    
    
    
    
    
		
}
