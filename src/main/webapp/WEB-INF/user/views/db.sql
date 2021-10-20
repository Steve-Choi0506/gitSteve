drop table hp_Member;
Create table hp_Member(
    hp_Index                number(6) primary key,
    hp_ID                   varchar2(20) not null,
    hp_Password             varchar2(30) not null,
    hp_Name                 varchar2(20) not null,
    hp_Birthday_Year        number(15) not null,
    hp_Birthday_Month       number(15) not null,
    hp_Sex                  number(3) not null,
    hp_Email                varchar2(40) not null,
    hp_Phone                varchar2(20) not null,
    hp_Ticket               number(6) not null,
    hp_Auth                 number(6) not null
);
drop sequence hp_Member_hp_Index;
create sequence hp_Member_hp_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim1', '1111', 'hyodong1', 1996, 01, 1, 'kim1@email.com', '1111-1111', 1, 1 );
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim2', '2222', 'hyodong2', 1996, 01, 1, 'kim2@email.com', '2222-2222', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim3', '3333', 'hyodong3', 1996, 01, 1, 'kim3@email.com', '3333-3333' ,1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim4', '4444', 'hyodong4', 1996, 01, 1, 'kim4@email.com', '4444-4444', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim5', '5555', 'hyodong5', 1996, 01, 1, 'kim5@email.com', '5555-5555', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim6', '6666', 'hyodong6', 1996, 01, 1, 'kim6@email.com', '6666-6666', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim7', '7777', 'hyodong7', 1996, 01, 1, 'kim7@email.com', '7777-7777', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim8', '8888', 'hyodong8', 1996, 01, 1, 'kim8@email.com', '8888-8888', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim9', '9999', 'hyodong9', 1996, 01, 1, 'kim9@email.com', '9999-9999', 1, 1);
select * from hp_Member;
delete from hp_Member;
commit;





drop table hp_Book;
Create table hp_Book(
  book_Index            number(6) primary key,
  book_Title            varchar2(20) not null,
  book_Writer           varchar2(20) not null,
  book_Company          varchar2(20) not null,
  book_Image            varchar2(100) not null,
  book_Content          varchar2(300) not null,
  book_Introduce        varchar2(1000) not null,
  book_Category         number(2) not null
);
drop sequence hp_Book_Book_Index;
create sequence hp_Book_Book_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '1좋아', 'hyo1', '11출판사', '1이좋아.png', '1좋아하는내용.pdf', '1좋아하는사람봐라', 0);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '2좋아', 'hyo2', '22출판사', '2가좋아.png', '2좋아하는내용.pdf', '2좋아하는사람봐라', 1);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '3좋아', 'hyo3', '33출판사', '3이좋아.png', '3좋아하는내용.pdf', '3좋아하는사람봐라', 0);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '4좋아', 'hyo4', '44출판사', '4가좋아.png', '4좋아하는내용.pdf', '4좋아하는사람봐라', 0);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '5좋아', 'hyo5', '55출판사', '5가좋아.png', '5좋아하는내용.pdf', '5좋아하는사람봐라', 1);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '6좋아', 'hyo6', '66출판사', '6이좋아.png', '6좋아하는내용.pdf', '6좋아하는사람봐라', 0 );
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '7좋아', 'hyo7', '77출판사', '7이좋아.png', '7좋아하는내용.pdf', '7좋아하는사람봐라', 1 );
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '8좋아', 'hyo8', '88출판사', '8이좋아.png', '8좋아하는내용.pdf', '8좋아하는사람봐라', 1 );
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '9좋아', 'hyo9', '99출판사', '9가좋아.png', '9좋아하는내용.pdf', '9좋아하는사람봐라', 1 );
select * from hp_Book;
delete from hp_book;
Update hp_book set book_company = '11출판사' where book_company = '망함';
alter table hp_book add book_Category number(3) not null;
commit;
drop table Book_review;






Create table Book_review(
  review_Index        number(10) primary key,
  book_Index          number(6) not null,
  hp_Index            number(6) not null,
  book_Title          varchar2(20) not null,
  review_name         varchar2(20) not null,
  review_password     varchar2(20) not null,
  book_review         varchar2(1000) not null,
  Constraint Book_review_Book foreign key(book_Index) references hp_Book(book_Index),
  Constraint Book_review_Member foreign key(hp_Index) references hp_Member(hp_Index)
);
drop sequence Book_review_review_Index;
create sequence Book_review_review_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;
insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 1, 3, '3좋아', 'abc', '123456', '가나다라' );
insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 3, 2, '2좋아', 'qwert', '56789', '나다라마' );
insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 7, 6, '6좋아', 'lkjhg', 'ertyuio', '뱌냐야바' );
insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 8, 9, '9좋아', 'zxcvbn', 'zrtyhn', '집에_가고_싶다' );
insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 9, 1, '1좋아', 'vguikm', 'sertyuhjn', '포트폴리오' );
select * from Book_review;
drop table Book_review;
drop sequence Book_review_hp_Index;
alter table Book_review Drop Constraint Book_review_FK;
commit;







Create table hp_Mybooks(
  hp_Index            number(6) primary key,
  book_Index          number(6) not null,
  book_Title          varchar2(20) not null,
  book_Writer         varchar2(20) not null,
  book_Image          varchar2(100) not null,
  Constraint hp_Mybooks_FK_hp foreign key(hp_Index) references hp_Member(hp_Index),
  Constraint hp_Mybooks_FK_book foreign key(book_Index) references hp_Book(book_Index)
);
insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image )
  values( 1, 1, '1좋아', 'hyo1', '1이좋아.png' );
insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image )
  values( 4, 3, '3좋아', 'hyo3', '3이좋아.png' );
insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image )
  values( 7, 5, '5좋아', 'hyo5', '5가좋아.png' );
insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image )
  values( 9, 7, '7좋아', 'hyo7', '7이좋아.png' );
select * from hp_Mybooks;
drop table hp_MyBooks;
drop sequence hp_Mybooks_hp_Index;
commit;
drop table hp_QnA;








Create table hp_QnA(
  qna_Index           number(6) primary key,
  hp_Index            number(6) not null,
  hp_ID               varchar2(20) not null,
  qna_Title           varchar2(20) not null,
  qna_Content         varchar2(300) not null,
  answer_Check        number(2) not null,
  qna_Date             date default sysdate,
  Constraint hp_QnA_FK foreign key(hp_Index) references hp_Member(hp_Index)
);
drop sequence hp_QnA_qna_Index;
create sequence hp_QnA_qna_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;
insert into hp_qna( qna_Index, hp_Index, hp_ID, qna_Title, qna_Content, answer_Check, qna_Date)
  values(hp_QnA_qna_Index.nextval, 1, 'kim1', 'aaaa', 'AAAA', 0, sysdate);
insert into hp_qna( qna_Index, hp_Index, hp_ID, qna_Title, qna_Content, answer_Check, qna_Date)
  values(hp_QnA_qna_Index.nextval, 4, 'kim4', 'bbbb', 'BBBB', 2, sysdate);
insert into hp_qna( qna_Index, hp_Index, hp_ID, qna_Title, qna_Content, answer_Check, qna_Date)
  values(hp_QnA_qna_Index.nextval, 6, 'kim6', 'cccc', 'CCCC', 1, sysdate);
insert into hp_qna( qna_Index, hp_Index, hp_ID, qna_Title, qna_Content, answer_Check, qna_Date)
  values(hp_QnA_qna_Index.nextval, 8, 'kim8', 'dddd', 'DDDD', 0, sysdate);
select * from hp_qna;
commit;
drop table QnA_Answer;










Create table QnA_Answer(
  answer_Index        number(6) primary key,
  qna_Index           number(6) not null,
  qna_Answer          varchar2(1000) not null,
  answer_Date         date default sysdate,
  Constraint QnA_Answer_FK foreign key(qna_Index) references hp_QnA(qna_Index)
);
drop sequence QnA_Answer_Index;
create sequence QnA_Answer_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;
insert into QnA_Answer(answer_Index, qna_Index, qna_Answer, answer_Date )
  values( QnA_Answer_Index.nextval,  1, '가바나다라', sysdate );
insert into QnA_Answer(answer_Index, qna_Index, qna_Answer, answer_Date )
  values( QnA_Answer_Index.nextval,  3, '이나가아', sysdate );
insert into QnA_Answer(answer_Index, qna_Index, qna_Answer, answer_Date )
  values( QnA_Answer_Index.nextval,  4, '바니타자', sysdate );
select * from QnA_Answer;
commit;







drop table hp_Notice;

Create table hp_Notice (
  notice_Index      number(6) primary key,
  notice_Title      varchar2(100) not null,
  notice_Content    varchar2(1000) not null,
  notice_Date       date default sysdate,
  notice_Count      number(6) default 0
 
);

drop sequence hp_Notice_Index;
create sequence hp_Notice_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;

insert into hp_Notice( notice_Index, notice_Title, notice_Content, notice_Date, notice_Count )
  values( hp_Notice_Index.nextval, '사이트 점검 있습니다.', '21일 오후 11시부터 22일 오전 10시까지 사이트 점검 있습니다. 양해 부탁드립니다.', sysdate, 1 );
insert into hp_Notice( notice_Index, notice_Title, notice_Content, notice_Date, notice_Count )
  values( hp_Notice_Index.nextval, '이용 약관 변경 안내', '이용 약관이 변경되었습니다.', sysdate, 1 );
insert into hp_Notice( notice_Index, notice_Title, notice_Content, notice_Date, notice_Count )
  values( hp_Notice_Index.nextval, '즐겨찾기 기능이 새로 추가되었습니다.', '즐겨찾기 기능이 새로 추가되었습니다. 많은 이용 부탁드립니다.', sysdate, 1 );

select * from hp_Notice;

commit;