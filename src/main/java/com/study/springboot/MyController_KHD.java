package com.study.springboot;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.study.springboot.dao.IBookListDao;
import com.study.springboot.dao.IBookReviewDao;
import com.study.springboot.dao.IMemberDao;
import com.study.springboot.dao.IMyBooksDao;
import com.study.springboot.dao.INoticeDao;
import com.study.springboot.dao.IQnADao;
import com.study.springboot.dto.BookListDto;
import com.study.springboot.dto.BookReviewDto;
import com.study.springboot.dto.MemberDto;
import com.study.springboot.dto.MyBooksDto;
import com.study.springboot.dto.NoticeDto;
import com.study.springboot.dto.QnADto;
import com.study.springboot.service.AdminService;
import com.study.springboot.service.MemberService;

@Controller
public class MyController_KHD {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private IBookListDao iBookListDao;
	
	@Autowired
	private IBookReviewDao iBookReviewDao;
	
	@Autowired 
	private IMyBooksDao iMyBooksDao;
	
	@Autowired
	private IMemberDao iMemberDao;
	
	@Autowired
	private INoticeDao iNoticeDao;
	
	@Autowired
	private IQnADao iQnADao;
	
	@Autowired
	private ServletContext context;
	
	@Autowired
	private FileUploadService fileUploadService;
	
	@RequestMapping("/")
	public String root( RedirectAttributes redirect ) {
		
		return "redirect:/user/views/main";
	}
	
	@RequestMapping("/upload")
	public @ResponseBody String root() throws Exception {
		
		System.out.println("path:" + context.getRealPath("/") );
		System.out.println("path:" + context.getContextPath() );
		String path = ResourceUtils.getFile("classpath:static/upload/").toPath().toString();
		System.out.println("path:" + path );
		
		return "FileUpload With Param";
	}

	@RequestMapping("/uploadForm")
	public String uploadForm() {

		return "fileUploadForm";
	}

	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
		multipartResolver.setMaxUploadSize(200000000);
		multipartResolver.setMaxInMemorySize(200000000);
		multipartResolver.setDefaultEncoding("utf-8");
		return multipartResolver;
	}
	
	
	
	@RequestMapping("/index")
	public String index( HttpServletRequest req, Model model ) {
		// Alert 메시지 중복 제거
		String alertMessage = (String)req.getSession().getAttribute("alert");
		System.out.println( "index alertMessage : " + alertMessage );
		
		if( alertMessage != null ) {
			req.setAttribute( "alert", alertMessage );
			req.getSession().setAttribute( "alert", null );
		}
		
		return "index";
	}
	
	// 관리자
	  // 회원
		
		
		
		
		
	  // 도서 목록
		@RequestMapping("/admin/views/admin_book")
		public String admin_book( HttpServletRequest req, Model model ) {
			
			List<BookListDto> booklist = memberService.booklist();
			model.addAttribute("hp_book_list",booklist);
			
			return "admin/views/admin_book";
		}
		
		// 도서 정보 불러오기
				@RequestMapping("/admin/views/write_view")
				public String view(@RequestParam("book_Index") int book_Index, HttpServletRequest req, Model model) {
					
					List<BookListDto> booklistbyIndex = adminService.booklistbyIndex( book_Index );
					model.addAttribute("booklistbyIndex",booklistbyIndex);
					
					
					return "admin/views/write_view";
				}
		
		@RequestMapping("/admin/views/content_view")
		public String view( @RequestParam("book_Index") int book_Index, Model model) {
			
			model.addAttribute("dto", iBookListDao.contentView(book_Index));
			
			return "view";
		}
		
		// 도서 목록 삽입이 가능한 페이지
				@RequestMapping("/admin/views/write_view1")
				public String view1(HttpServletRequest req, Model model) {
					
					
					return "admin/views/write_view1";
				}
		// 도서 목록 갱신이 가능한 페이지
				@RequestMapping("/admin/views/write_view2")
				public String view2(HttpServletRequest req, Model model) {
					
					
					return "admin/views/write_view2";
				}
		
		
		// 도서 목록 삽입
		@RequestMapping(value="/addBook", method=RequestMethod.POST)
		public String addBook( 
				               @RequestParam("book_Title") String book_Title,
				               @RequestParam("book_Writer") String book_Writer, 
				               @RequestParam("book_Company") String book_Company, 
				               @RequestParam("book_Image") MultipartFile book_Image,
				               @RequestParam("book_Content") String book_Content,
				               @RequestParam("book_Introduce") String book_Introduce,
				               @RequestParam("book_Category") int book_Category,
				               ModelMap modelMap, Model model) throws Exception{
			
			
			String filename = fileUploadService.restore(book_Image);
			
			                  iBookListDao.addBook(book_Title, book_Writer, book_Company, filename, book_Content,
			                		        book_Introduce, book_Category);
			                   
			                  
			          		System.out.println("book_Image:" + book_Image);
			          		model.addAttribute("book_Image:", book_Image);
				                     
			return "redirect:/admin/views/admin_book";
			
	
		}

		// 도서 목록 갱신
		@RequestMapping(value="/updateBook", method=RequestMethod.POST)
		public String updateBook( 
				           
				   @RequestParam("book_Index") int book_Index,
				   @RequestParam("book_Title") String book_Title,
	               @RequestParam("book_Writer") String book_Writer, 
	               @RequestParam("book_Company") String book_Company, 
	               @RequestParam("book_Image") MultipartFile book_Image,
	               @RequestParam("book_Content") String book_Content,
	               @RequestParam("book_Introduce") String book_Introduce,
	               @RequestParam("book_Category") int book_Category,ModelMap modelMap,Model model) throws Exception{
			
			String filename = fileUploadService.restore(book_Image);
			
	        iBookListDao.updateBook(book_Index, book_Title, book_Writer, book_Company, filename, book_Content,
    		        book_Introduce, book_Category);
			
	        
      		System.out.println("book_Image:" + book_Image);
      	
			model.addAttribute("book_Index",book_Index);
			model.addAttribute("book_Title",book_Title);
			model.addAttribute("book_Writer",book_Writer);
			model.addAttribute("book_Company",book_Company);
			model.addAttribute("book_Image",book_Image);
			model.addAttribute("book_Content",book_Content);
		    model.addAttribute("book_Introduce",book_Introduce);
			model.addAttribute("book_Category",book_Category);
						                     
			return "redirect:/admin/views/admin_book";
					
		}
		
		// 도서 목록 삭제
		@RequestMapping(value="/deleteBook", method=RequestMethod.POST)
		public String deleteBook( @RequestParam("book_Index") int book_Index, ModelMap modelMap ) throws Exception {
			
		iBookListDao.deleteBook(book_Index);
		
						                     
		return "redirect:/admin/views/admin_book";
					
		}
		
		
		
		
		
		
		
	  // 도서 리뷰	
		@RequestMapping("/admin/views/admin_review")
		public String admin_review( HttpServletRequest req, Model model ) {
			
			List<BookReviewDto> bookreviewlist = adminService.bookreviewlist();
			model.addAttribute("bookreviewlist", bookreviewlist);
			System.out.println("bookreviewlist:" + bookreviewlist);
			
			return "admin/views/admin_review";
		}
		
		// 도서 리뷰 불러오기
		@RequestMapping("/admin/views/write_review")
		public String review(@RequestParam("review_Index") int review_Index, 
				HttpServletRequest req, Model model) {
			
			List<BookReviewDto> bookreviewbyIndex = adminService.bookreviewbyIndex( review_Index );
			model.addAttribute("bookreviewbyIndex",bookreviewbyIndex);
			
			
			return "admin/views/write_review";
		}

				// 도서 리뷰 목록 삽입이 가능한 페이지
						@RequestMapping("/admin/views/write_review1")
						public String review1(HttpServletRequest req, Model model) {
							
							
							return "admin/views/write_review1";
						}
				// 도서 리뷰 목록 갱신이 가능한 페이지
						@RequestMapping("/admin/views/write_review2")
						public String review2(HttpServletRequest req, Model model) {
							
							
							return "admin/views/write_review2";
						}
						
			
						// 도서 리뷰 목록 삽입
						@RequestMapping(value="/addBookReview", method=RequestMethod.POST)
						public String addBookReview( 
								               @RequestParam("book_Index") int book_Index,
								               @RequestParam("hp_Index") int hp_Index, 
								               @RequestParam("book_Title") String book_Title, 
								               @RequestParam("review_name") String review_name,
								               @RequestParam("review_password") String review_password,
								               @RequestParam("book_review") String book_review,
								            
								               ModelMap modelMap ) throws Exception{
							
							                   iBookReviewDao.addBookReview(book_Index, hp_Index, book_Title, review_name, review_password,
							                		   book_review);
							                   
							                   
								                     
							return "redirect:/admin/views/admin_review";
							
					
						}

						// 도서 리뷰 목록 갱신
						@RequestMapping(value="/updateBookReview", method=RequestMethod.POST)
						public String updateBookReview( 
								           
								   @RequestParam("review_Index") int review_Index,
								   @RequestParam("book_Index") int book_Index,
					               @RequestParam("hp_Index") int hp_Index, 
					               @RequestParam("book_Title") String book_Title, 
					               @RequestParam("review_name") String review_name,
					               @RequestParam("review_password") String review_password,
					               @RequestParam("book_review") String book_review,
					               ModelMap modelMap) throws Exception{
							
					         iBookReviewDao.updateBookReview(review_Index, book_Index, hp_Index, book_Title, review_name, review_password,
					        		 book_review);
							
						//	model.addAttribute("book_Index",book_Index);
						//	model.addAttribute("book_Title",book_Title);
						//	model.addAttribute("book_Writer",book_Writer);
						//	model.addAttribute("book_Company",book_Company);
						//	model.addAttribute("book_Image",book_Image);
						//	model.addAttribute("book_Content",book_Content);
						//	model.addAttribute("book_Introduce",book_Introduce);
						//	model.addAttribute("book_Category",book_Category);
										                     
							return "redirect:/admin/views/admin_review";
									
						}
						
						// 도서 리뷰 목록 삭제
						@RequestMapping(value="/deleteBookReview", method=RequestMethod.POST)
						public String deleteBookReview( @RequestParam("review_Index") int review_Index, ModelMap modelMap ) throws Exception {
							
						iBookReviewDao.deleteBookReview(review_Index);
						
										                     
						return "redirect:/admin/views/admin_review";
									
						}
		
		
		
		
		
						
						
						
						// 유저 목록
						@RequestMapping("/admin/views/admin_member")
						public String admin_member( HttpServletRequest req, Model model ) {
							
							List<MemberDto> memberlist = adminService.memberlist();
							model.addAttribute("hp_member_list",memberlist);
							
							return "admin/views/admin_member";
						}
						
					

						// 유저 목록 갱신이 가능한 페이지  ***********
						@RequestMapping("/admin/views/write_member")
						public String member(				
								@RequestParam("hp_ID") String hp_ID, 
								HttpServletRequest req, Model model) {
							
							List<MemberDto> memberlist_byIndex = adminService.memberlist_byIndex( hp_ID );
							model.addAttribute("memberlist_byIndex",memberlist_byIndex);
							
							return "admin/views/write_member";
						}
						// 유저 목록 삽입이 가능한 페이지
								@RequestMapping("/admin/views/write_member1")
								public String member1(HttpServletRequest req, Model model) {
									
									
									return "admin/views/write_member1";
								}
						// 유저 목록 갱신이 가능한 페이지
								@RequestMapping("/admin/views/write_member2")
								public String member2(HttpServletRequest req, Model model) {
									
									
									return "admin/views/write_member2";
								}
						
								// 유저 목록 삽입
								@RequestMapping(value="/addMember", method=RequestMethod.POST)
								public String addMember( 
										               @RequestParam("hp_ID") String hp_ID,
										               @RequestParam("hp_Password") String hp_Password, 
										               @RequestParam("hp_Name") String hp_Name, 
										               @RequestParam("hp_Birthday_Year") int hp_Birthday_Year,
										               @RequestParam("hp_Birthday_Month") int hp_Birthday_Month,
										               @RequestParam("hp_Sex") int hp_Sex,
										               @RequestParam("hp_Email") String hp_Email,
										               @RequestParam("hp_Phone") String hp_Phone,
										               @RequestParam("hp_Ticket") int hp_Ticket,
										               @RequestParam("hp_Auth") int hp_Auth,
										              
										               ModelMap modelMap ) throws Exception{
									
									                   iMemberDao.addMember(hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month,
									                		   hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth);
									                   
									                   
										                     
									return "redirect:/admin/views/admin_member";
									
							
								}

								// 유저 목록 갱신
								@RequestMapping(value="/updateMember", method=RequestMethod.POST)
								public String updateMember( 
										          
										   @RequestParam("hp_Index") int hp_Index,
										   @RequestParam("hp_ID") String hp_ID,
							               @RequestParam("hp_Password") String hp_Password, 
							               @RequestParam("hp_Name") String hp_Name, 
							               @RequestParam("hp_Birthday_Year") int hp_Birthday_Year,
							               @RequestParam("hp_Birthday_Month") int hp_Birthday_Month,
							               @RequestParam("hp_Sex") int hp_Sex,
							               @RequestParam("hp_Email") String hp_Email,
							               @RequestParam("hp_Phone") String hp_Phone,
							               @RequestParam("hp_Ticket") int hp_Ticket,
							               @RequestParam("hp_Auth") int hp_Auth, ModelMap modelMap) throws Exception{
									
									iMemberDao.updateMember(hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month,
					                		   hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth);
									
								//	model.addAttribute("book_Index",book_Index);
								//	model.addAttribute("book_Title",book_Title);
								//	model.addAttribute("book_Writer",book_Writer);
								//	model.addAttribute("book_Company",book_Company);
								//	model.addAttribute("book_Image",book_Image);
								//	model.addAttribute("book_Content",book_Content);
								//	model.addAttribute("book_Introduce",book_Introduce);
								//	model.addAttribute("book_Category",book_Category);
												                     
									return "redirect:/admin/views/admin_member";
											
								}
								
								// 유저 목록 삭제
								@RequestMapping(value="/deleteMember", method=RequestMethod.POST)
								public String deleteMember( @RequestParam("hp_Index") int hp_Index, ModelMap modelMap ) throws Exception {
									
								iMemberDao.deleteMember(hp_Index);
								
												                     
								return "redirect:/admin/views/admin_member";
											
								}
						
						
						
						
						
						
						
						
						
						
		
	  // 공지사항 목록
		@RequestMapping("/admin/views/admin_notice")
		public String admin_notice( HttpServletRequest req, Model model ) {
			
			List<NoticeDto> noticelist = adminService.noticelist();
			model.addAttribute("hp_notice_list",noticelist);
			
			return "admin/views/admin_notice";
		}
		
		// 공지사항 목록 갱신이 가능한 페이지
		@RequestMapping("/admin/views/write_notice")
		public String notice(@RequestParam("notice_Index") int notice_Index, 
				HttpServletRequest req, Model model) {
			
			List<NoticeDto> noticebyIndex = adminService.noticebyIndex( notice_Index );
			model.addAttribute("noticebyIndex",noticebyIndex);
			
			return "admin/views/write_notice";
		}
		
		
				// 공지사항 목록 삽입이 가능한 페이지
						@RequestMapping("/admin/views/write_notice1")
						public String notice1(HttpServletRequest req, Model model) {
							
							
							return "admin/views/write_notice1";
						}
				// 공지사항 목록 삭제가 가능한 페이지
						@RequestMapping("/admin/views/write_notice2")
						public String notice2(HttpServletRequest req, Model model) {
							
							
							return "admin/views/write_notice2";
						}
				
				
				// 공지사항 목록 삽입
				@RequestMapping(value="/addNotice", method=RequestMethod.POST)
				public String addNotice( 
						               @RequestParam("notice_Title") String notice_Title,
						               @RequestParam("notice_Content") String notice_Content,
						               @RequestParam("notice_Count") int notice_Count,
						       
						               ModelMap modelMap ) throws Exception{
					
					                   iNoticeDao.addNotice(notice_Title, notice_Content);
					                   
					                   
						                     
					return "redirect:/admin/views/admin_notice";
					
			
				}

				// 공지사항 목록 갱신
				@RequestMapping(value="/updateNotice", method=RequestMethod.POST)
				public String updateNotice( 
						         
						   @RequestParam("notice_Index") int notice_Index,
						   @RequestParam("notice_Title") String notice_Title,
			               @RequestParam("notice_Content") String notice_Content, 
			               @RequestParam("notice_Count") int notice_Count,ModelMap modelMap) throws Exception{
					
			         iNoticeDao.updateNotice(notice_Index, notice_Title, notice_Content);
					
				//	model.addAttribute("book_Index",book_Index);
				//	model.addAttribute("book_Title",book_Title);
				//	model.addAttribute("book_Writer",book_Writer);
				//	model.addAttribute("book_Company",book_Company);
				//	model.addAttribute("book_Image",book_Image);
				//	model.addAttribute("book_Content",book_Content);
				//	model.addAttribute("book_Introduce",book_Introduce);
				//	model.addAttribute("book_Category",book_Category);
								                     
					return "redirect:/admin/views/admin_notice";
							
				}
				
				// 공지사항 목록 삭제
				@RequestMapping(value="/deleteNotice", method=RequestMethod.POST)
				public String deleteNotice( @RequestParam("notice_Index") int notice_Index, ModelMap modelMap ) throws Exception {
					
				iNoticeDao.deleteNotice(notice_Index);
				
								                     
				return "redirect:/admin/views/admin_notice";
							
				}
				
				// 공지사항 조회수 올리기
				@RequestMapping(value="/countNotice", method=RequestMethod.POST)
				public ModelAndView countNotice( @RequestParam("notice_Count") int notice_Count) throws Exception {
					
				adminService.countNotice(notice_Count);
				
								                     
				return new ModelAndView("countNotice","countNotice1", adminService.countNotice(notice_Count));
							
				}
				
				
				
				
				
		
	  // 관리자 1:1 문의	
		@RequestMapping("/admin/views/admin_qna")
		public String admin_qna( HttpServletRequest req, Model model ) {
			
			List<QnADto> qnalist = adminService.QnAlist();
			model.addAttribute("hp_qna_list",qnalist);
			
			return "admin/views/admin_qna";
		}
		
		// 1:1 문의 목록 갱신이 가능한 페이지
				@RequestMapping("/admin/views/write_qna")
				public String qna(				
						@RequestParam("qna_Index") int qna_Index, 
						HttpServletRequest req, Model model) {
					
						List<QnADto> qnabyIndex = adminService.qnabyIndex( qna_Index );
						model.addAttribute("qnabyIndex",qnabyIndex);
					
					return "admin/views/write_qna";
				}
	
		
		// 1:1 문의 목록 삽입이 가능한 페이지
				@RequestMapping("/admin/views/write_qna1")
				public String qna1(@RequestParam("qna_Index") int qna_Index, HttpServletRequest req, Model model) {
					
					List<QnADto> qnabyIndex = adminService.qnabyIndex( qna_Index );
					model.addAttribute("qnabyIndex",qnabyIndex);
					
					return "admin/views/write_qna1";
				}
		// 1:1 문의 목록 삭제가 가능한 페이지
				@RequestMapping("/admin/views/write_qna2")
				public String qna2(HttpServletRequest req, Model model) {
					
					
					return "admin/views/write_qna2";
				}
				
				
				
			
				// 1:1 문의 목록 삽입
				@RequestMapping(value="/addQnA", method=RequestMethod.POST)
				public String addQnA( 
					
						   @RequestParam("hp_Index") int hp_Index,
			               @RequestParam("hp_ID") String hp_ID, 
			               @RequestParam("qna_Title") String qna_Title,
			               @RequestParam("qna_Content") String qna_Content,
			               
			               
						               ModelMap modelMap ) throws Exception{
					
					                   iQnADao.addQnA(hp_Index,hp_ID,qna_Title,qna_Content);
					                   
					                   
						                     
					return "redirect:/admin/views/admin_qna";
					
			
				}

				// 1:1 문의 목록 갱신
				@RequestMapping(value="/updateQnA", method=RequestMethod.POST)
				public String updateNotice( 
						         
						   @RequestParam("qna_Index") int qna_Index,
						   @RequestParam("hp_Index") int hp_Index,
			               @RequestParam("hp_ID") String hp_ID, 
			               @RequestParam("qna_Title") String qna_Title,
			               @RequestParam("qna_Content") String qna_Content,
			               @RequestParam("answer_Check") int answer_Check
			               
			               ,ModelMap modelMap) throws Exception{
					
			         iQnADao.updateQnA(qna_Index,hp_Index, hp_ID, qna_Title,qna_Content, answer_Check);
					
				//	model.addAttribute("book_Index",book_Index);
				//	model.addAttribute("book_Title",book_Title);
				//	model.addAttribute("book_Writer",book_Writer);
				//	model.addAttribute("book_Company",book_Company);
				//	model.addAttribute("book_Image",book_Image);
				//	model.addAttribute("book_Content",book_Content);
				//	model.addAttribute("book_Introduce",book_Introduce);
				//	model.addAttribute("book_Category",book_Category);
								                     
					return "redirect:/admin/views/admin_qna";
							
				}
				
				// 1:1 문의 목록 삭제
				@RequestMapping(value="/deleteQnA", method=RequestMethod.POST)
				public String deleteQnA( @RequestParam("qna_Index") int qna_Index, ModelMap modelMap ) throws Exception {
					
				iQnADao.deleteQnA(qna_Index);
				
								                     
				return "redirect:/admin/views/admin_qna";
							
				}
				
				
				

				
				// 즐겨찾기 목록
				@RequestMapping("/user/views/member/favorites")
				public String mybookslist( HttpServletRequest req, Model model ) {
					
					List<MyBooksDto> mybookslist = memberService.mybookslist();
					model.addAttribute("my_books_list",mybookslist);
					
					return "user/views/member/favorites";
				}
				

	
	// 사용자
	 // 메인화면	
		@RequestMapping("/user/views/main")
		public String main( HttpServletRequest req, Model model ) {
			
			
			
			return "user/views/main";
		}
	  
	 // 로그인	
	//	@RequestMapping("/user/views/member/login")
	//	public String login( HttpServletRequest req, Model model ) {
			
			
		
	//		return "user/views/member/login";
	//	}	
		
		
		
		// 로그인	
		//	@RequestMapping("/user/views/member/login")
		//	public String login( HttpServletRequest req, Model model ) {
				
				
			
		//		return "user/views/member/login";
		//	}	
		
		 //관리자 로그인	
					@RequestMapping("/admin/views/admin")
					public String adminLogin( HttpServletRequest req, Model model ) {
						
						
					
						return "admin/views/admin";
					}	
				
				
		
		
		 // 관리자 로그인	
	
		@RequestMapping(value="/adminLogin", method=RequestMethod.POST)
		public String adminLogin( 
			       @RequestParam("hp_ID") String hp_ID, 
	               @RequestParam("hp_Password") String hp_Password, ModelMap modelMap, HttpServletRequest request) throws Exception{
			
						if( !hp_ID.equals("admin")) {
							System.out.println("관리자 로그인 실패 : admin아이디 아님.");
							return "admin/views/login_fail";
						}
			
			           int result = adminService.adminLogin(hp_ID,hp_Password);	
			                 
			           if( result == 1) {
			                  //세션객체에 아이디 저장해놓기
			        	   
			        	   request.getSession().setAttribute("alert", "로그인되었습니다.");
			   			request.getSession().setAttribute("hp_ID", hp_ID);

			        	   System.out.println("관리자 로그인 성공");
			        	   
			                  return "admin/views/admin_member";
	
		               } else {
		            	   request.getSession().setAttribute("alert", "로그인되었습니다.");
		       			request.getSession().setAttribute("hp_Password", hp_Password);
		            	   System.out.println("관리자 로그인 실패"); 	 
			                	 
			               	 return "admin/views/admin";
			                	 
			            }
					         
		}
		
			
			
			
	 // 회원가입하는 페이지	
		@RequestMapping("/user/views/member/join")
		public String join( HttpServletRequest req, Model model ) {
			
			
		
			return "user/views/member/join";
		}
		
		
		// 약관동의
		@RequestMapping("/user/views/member/join_preview")
		public String join_preview( HttpServletRequest req, Model model ) {
			
			
		
			return "user/views/member/join_preview";
		}			
	// 유저 회원가입
		@RequestMapping(value="/userjoin", method=RequestMethod.POST)
		public String join( 
				 @RequestParam("hp_ID") String hp_ID,
	               @RequestParam("hp_Password") String hp_Password, 
	               @RequestParam("hp_Name") String hp_Name, 
	               @RequestParam("hp_Birthday_Year") int hp_Birthday_Year,
	               @RequestParam("hp_Birthday_Month") int hp_Birthday_Month,
	               @RequestParam("hp_Sex") int hp_Sex,
	               @RequestParam("hp_Email") String hp_Email,
	               @RequestParam("hp_Phone") String hp_Phone,
	               @RequestParam("hp_Ticket") int hp_Ticket,
	               @RequestParam("hp_Auth") int hp_Auth,
				              
				               ModelMap modelMap, HttpServletRequest request) throws Exception{
			
			                   int result =iMemberDao.userjoin(hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month,
			                		   hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth);
			                   
			                   if( result == 1) {
					                  //세션객체에 회원가입 정보 저장해놓기
			                	   request.getSession().setAttribute("hp_ID", hp_ID);
					       			request.getSession().setAttribute("hp_Password", hp_Password);
					       			
					   		
					        	   System.out.println("회원가입 성공");
					        	   
					                  return "user/views/member/join_ok";
			
				               } else {
				            	   
				            	   request.getSession().setAttribute("hp_ID", hp_ID);
					       			request.getSession().setAttribute("hp_Password", hp_Password);
					       			
					       			
				            	   System.out.println("회원가입 실패"); 	 
					                	 
					               	 return "user/views/member/join_fail";
					                	 
					            }
				                     
			
	
		}
		
		//사용자 로그인	
					@RequestMapping("/user/views/member/login")
					public String userLogin( HttpServletRequest req, Model model ) {
						
						
					
						return "user/views/member/login";
					}	
					
					
		
		//사용자 로그인	
		
			@RequestMapping(value="/userLogin", method=RequestMethod.POST)
			public String userLogin( 
				       @RequestParam("hp_ID") String hp_ID, 
		               @RequestParam("hp_Password") String hp_Password, ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) throws Exception{
				
				           int result = memberService.userLogin(hp_ID,hp_Password);	
				                 
				           if( result == 1) {
				                  //세션객체에 아이디 저장해놓기
				        	   
				        	   request.getSession().setAttribute("alert", "로그인되었습니다.");
				   			   request.getSession().setAttribute("hp_ID", hp_ID);
				   			   request.getSession().setAttribute("hp_Password", hp_Password);
				        	   System.out.println("사용자 로그인 성공");
				        	   
				                  return "user/views/main";
		
			               } else {
			            	   response.setContentType("text/html; charset=UTF-8");

			         
			       			request.getSession().setAttribute("hp_Password", hp_Password);
			            	   System.out.println("사용자 로그인 실패"); 	 
			            	   
			            	   PrintWriter out = response.getWriter();

			       
			            	   out.println("<script>alert('로그인 실패');</script>");
			            	   
			            	   out.flush();
 	 
				               	 return "user/views/member/login";
				                	 
				            }
						         
			}
			
			@RequestMapping(value="/logout")
			public String logout(HttpServletRequest request, Model model) {
				
				request.getSession().invalidate();
				
				request.getSession().setAttribute("alert", "로그아웃되었습니다.");
				
				return "/user/views/main";  
			}
			
		
	 // 마이페이지	
		@RequestMapping("/user/views/member/mypage")
		public String mypage( HttpServletRequest req, Model model ) {
			
			// 세션값 받아와야함
			String hp_ID = (String) req.getSession().getAttribute("hp_ID");
			
			List<MemberDto> list = memberService.memberlist_byIndex(hp_ID);
			
			if( list.size() > 0 ) {
				model.addAttribute("memberDto", list.get(0));
			}
			
			return "user/views/member/mypage";
		}
		
	// 마이페이지 -> 정보변경
		@RequestMapping("/user/views/member/change_infor")
		public String change_infor( HttpServletRequest req, Model model ) {
			
			
			return "user/views/member/change_infor";
		}
	// 마이페이지 -> 정보변경 -> 확인
		@RequestMapping("/user/views/member/change_infor2")
		public String change_infor2( HttpServletRequest req, Model model ) {
			// 세션값 받아와야함
				String hp_ID = (String) req.getSession().getAttribute("hp_ID");
				
				List<MemberDto> list = memberService.memberlist_byIndex(hp_ID);
				
				if( list.size() > 0 ) {
					model.addAttribute("memberDto", list.get(0));
				}
						
			return "user/views/member/change_infor2";
		}
		
		
	// 마이페이지 -> 1:1 문의 목록 보기
		@RequestMapping("/user/views/member/inquiry_history")
		public String inquiry_history(HttpServletRequest req, Model model ) {

			List<QnADto> qnalist = adminService.QnAlist();
			model.addAttribute("hp_qna_list",qnalist);
			
			return "user/views/member/inquiry_history";
		}
	// 마이페이지 -> 내 1:1 문의 목록 보기
			@RequestMapping("/user/views/member/myInquiry")
			public String myInquiry( @RequestParam("hp_ID") String hp_ID,HttpServletRequest req, Model model ) {

				List<QnADto> qnalistByuser = adminService.qnalistByuser(hp_ID);
				model.addAttribute("qnalistByuser",qnalistByuser);
				
				return "user/views/member/myInquiry";
			}

		
		
		
	// 마이페이지 -> 1:1 문의 -> 작성하기
		@RequestMapping("/user/views/member/inquiry")
		public String inquiry( HttpServletRequest req, Model model ) {
			
			
			return "user/views/member/inquiry";
		}
		
		// 마이페이지 -> 1:1 문의 -> 수정하기
		@RequestMapping("/user/views/member/inquiry_update")
		public String inquiry_update( @RequestParam("qna_Index") int qna_Index, HttpServletRequest req, Model model ) {
			
			List<QnADto> qnabyIndex = adminService.qnabyIndex( qna_Index );
			model.addAttribute("qnabyIndex",qnabyIndex);
			
			
			
			return "user/views/member/inquiry_update";
		}
		
		// 1:1 문의 목록 갱신
		@RequestMapping(value="/updateQnAByuser", method=RequestMethod.POST)
		public String updateOwnQna( 
				         
				   @RequestParam("qna_Index") int qna_Index,
				   @RequestParam("hp_Index") int hp_Index,
	               @RequestParam("hp_ID") String hp_ID, 
	               @RequestParam("qna_Title") String qna_Title,
	               @RequestParam("qna_Content") String qna_Content,
	               @RequestParam("answer_Check") int answer_Check
	               
	               ,ModelMap modelMap) throws Exception{
			
	         iQnADao.updateQnA(qna_Index,hp_Index, hp_ID, qna_Title,qna_Content, answer_Check);
						                     
			return "redirect:/user/views/member/inquiry_history";
					
		}
	
	// 마이페이지 -> 1:1 문의 내용 
		@RequestMapping("/user/views/member/inquiry_in")
		public String inquiry_in( @RequestParam("qna_Index") int qna_Index, HttpServletRequest req, Model model ) {
			
			List<QnADto> qnabyIndex = adminService.qnabyIndex( qna_Index );
			model.addAttribute("qnabyIndex",qnabyIndex);
			
			return "user/views/member/inquiry_in";
		}
	
		
		@RequestMapping(value="/addQnAByuser", method=RequestMethod.POST)
		public String addQnAByuser( 
			
				   
	               @RequestParam("qna_Title") String qna_Title,
	               @RequestParam("qna_Content") String qna_Content,
	              
	               
				               ModelMap modelMap ) throws Exception{
			
			                   iQnADao.addQnAByuser(qna_Title,qna_Content);
			                   
			                   
				                     
			return "redirect:/user/views/member/mypage";
			
	
		}
		
	// 마이페이지 -> 공지사항
		@RequestMapping("/user/views/member/notice")
		public String mypage_notice( HttpServletRequest req, Model model ) {
			
			List<NoticeDto> noticelist = adminService.noticelist();
			model.addAttribute("hp_notice_list",noticelist);
			
			
			return "user/views/member/notice";
		}
	// 마이페이지 -> 공지사항 -> 읽기
		@RequestMapping("/user/views/member/notice_in")
		public String mypage_notice_in( @RequestParam("notice_Index") int notice_Index, HttpServletRequest req, Model model ) {
			
			
			List<NoticeDto> noticebyIndex = adminService.noticebyIndex( notice_Index );
			model.addAttribute("noticebyIndex",noticebyIndex);
			
			return "user/views/member/notice_in";
		}
		

	 // 국내도서	
		@RequestMapping("/user/views/books/books_korea")
		public String books_korea( HttpServletRequest req, Model model ) {
			
			List<BookListDto> booklist = adminService.booklist();
			model.addAttribute("hp_book_list",booklist);
			
			return "user/views/books/books_korea";
		}
		
	 // 국외도서	
		@RequestMapping("/user/views/books/books_overseas")
		public String books_overseas( HttpServletRequest req, Model model ) {
			
			return "user/views/books/books_overseas";
		}
		
	 // 도서 상세 페이지
		@RequestMapping("/user/views/books/books_introduction")
		public String books_introduction( HttpServletRequest req, Model model ) {
			
			return "user/views/books/books_introduction";
		}
		
	 // 뼈대
		@RequestMapping("/user/views/member/뼈대")
		public String 뼈대( HttpServletRequest req, Model model ) {
					
			return "user/views/member/뼈대";
		}
		
		
	  
		
	  //ㅁㄴㅇㄹ
	
}