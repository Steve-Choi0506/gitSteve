<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>도서 상세 정보</title>

    <script src="https://kit.fontawesome.com/12588498cb.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



    <style>
        :root {
        --text-color: rgba(255, 255, 255, 0.8);
        --accent-color: rgba(66, 183, 226, 0.8);
        --background-color: #bfc8d7;
        --heder-color:  rgba(0, 0, 0, 0.8);

        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
        }

        /* 페이지 크기, 배경색 */
        html, body {
            width: 100%;
            height: 100%;
            background-color: var(--background-color)
        }


        /* a링크 색 */
        a {
            text-decoration: none;
            color: var(--text-color);
        }




        /* 헤더 시작 */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: var(--heder-color);
            padding: 0px 12px;

            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1;
        }

        .navbar__menu {
            display: flex;
            list-style: none;
            padding-left: 0;
            font-size: 24px;
            font-weight: bold;
        }

        .navbar__menu li:hover {
            background-color: var(--accent-color);
            border-radius: 4px;
        }

        .navbar__menu li {
            padding: 0px 40px;
        }

        .navbar__login {
            display: flex;
            list-style: none;
            color: var(--text-color);
            padding-left: 0;
            font-size: 20px;
            font-weight: bold;
        }

        .navbar__login li {
            padding: 0px 12px;
        }

        .navbar__toggleBtn {
            display: none;
            position: absolute;
            top: 15px;
            right: 32px;
            font-size: 30px;
            color: var(--accent-color);
        }

        #headerimg {
            width: 70px;
            height: 60px;
        }

        /* 헤더 종료 */

        #header {
            color: var(--accent-color)
        }

        #header:hover {
            color: var(--text-color);
        }
        

        /* 페이지 너비 */
        section {
            width: 100%;
            position: relative;
        }





        .book {
            /* border: 3px solid gold; */
            margin-top: 80px;
            width: 100%;
            display: flex;
            align-items: center;
        }

        /* 책 이미지 */
        .booksimg img {
            /* border: 3px solid green; */
            width: 300px;
            height: 500px;
            margin-left: 30px;
        }

        /* 책 정보 */
        .books-content {
            /* border: 3px solid blue; */
            width: 100%;
        }

        /* 제목 칸 */
        .books-title {
            /* border: 3px solid red; */
            width: 100%;
            font-weight: bold;
            font-size: 50px;
            color: black;
            text-align: center;
            line-height: 0;
        }

        /* 저자 칸 */
        .writer {
            /* border: 3px solid blue; */
            width: 100%;
            height: 100px;
            font-weight: bold;
            font-size: 30px;
            text-align: right;
            color: black;
        }

        /* 버튼 칸 */
        .favorites{
            /* border: 3px solid red; */
            width: 100%;
            height: 100px;
            text-align: right;
            line-height: 0;
            color: black;
        }

        /* 즐겨찾기 버튼 */
        .button-favor {
            font-size: 25px;
            margin-right: 15px;
            border-radius: 10px;
            padding: 5px;
            font-weight: bold;
        }

        /* 즐겨찾기 버튼 마우스 올릴시 */
        .button-favor:hover {
            background-color: var(--accent-color);
        }

        /* 읽기 칸 */
        .read {
            /* border: 3px solid blue; */
            width: 100%;
            height: 100px;
            text-align: right;
            line-height: 0;
        }

        /* 읽기 버튼 */
        .button-read {
            font-size: 25px;
            margin-right: 15px;
            border-radius: 10px;
            padding: 5px;
            font-weight: bold;
        }

        /* 읽기 버튼 올릴시 */
        .button-read:hover {
            background-color: var(--accent-color);
        }

        /* 평가 칸 */
        .rating {
            display: flex;
            /* border: 3px solid green; */
            width: 70%;
            height: 100px;
            justify-content: space-between;
            line-height: 100px;
            padding-right: 20px;
            margin-left: 30%;
        }

        /* 평가 버튼 */
        .button-rating {
            font-size: 30px;
            border-radius: 10px;
            padding: 5px 10px;
        }

        /* 평가 버튼 올릴시 */
        .button-rating:hover {
            background-color: var(--accent-color);
        }






        .summary {
            /* border: 3px solid black; */
            margin-top: 50PX;
            width: 100%;
        }

        .p-1 {
            font-size: 40px;
            font-weight: bolder;
            color: black;
            background-color: var(--accent-color);
            height: 80px;
            text-align: center;
            line-height: 80px;
            width: 200px;
            margin-bottom: 30px;
            border-radius: 10px;
        }

        .p-2 {
            font-size: 20px;
            color: black;
            font-weight: bolder;
        }




        .review {
            /* border: 3px solid purple; */
            width: 100%;
            margin-top: 50PX;
        }

        /* 아이디  */
        .review-1 {
            font-size: 40px;
            font-weight: bolder;
            color: black;
            background-color: var(--accent-color);
            height: 80px;
            text-align: center;
            line-height: 80px;
            width: 200px;
            margin-bottom: 30px;
            border-radius: 10px;
            margin-top: 30px;
        }

        /* 리뷰 작성 칸 */
        .review-2 {
            width: 100%;
            padding-bottom: 50px;
        }

        input[type=text] {
            width: 80%;
            height: 200px;
            border-radius: 10px;
        }

        /* 리뷰 작성 버튼 */
        .btn {
            margin-left: 30px;
            font-size: 30px;
            font-weight: bolder;
            border-radius: 10px;
            padding: 10px 20px;
        }

        .btn:hover {
            background-color: var(--accent-color);
        }


        /* 리뷰 테이블 */
        .table {
            text-align: center;
            table-layout: auto;
            font-size: 30px;
            width: 100%;
            border-collapse: collapse;
            height: 50px;
        }

        .table th, td {
            border: 2px solid black;
        }

        #num {
            width: 10%;
        }

        #name {
            width: 10%;
        }

        #text {
            width: 70%;
        }

        #day {
            width: 10%;
        }







        /* 푸터 */
        #foo {
            padding-top: 200px;
        }

        .footer {
            display: flex;
            width: 100%;
            height: 150px;
            background: rgba(0, 0, 0, 0.8);
            align-items: center;
        }

        .footer-p {
            margin-left: 80px;
        }

        #footer-p {
            font-size: 24px;
            /* color: black; */
        }

        /* 푸터 종료 */






        @media screen and (max-width: 768px) {

            /* 헤더 시작 */
            .navbar {
                flex-direction: column;
                align-items: flex-start;
                padding: 8px 24px;
            }

            .navbar__menu {
                display: none;
                flex-direction: column;
                align-items: center;
                width: 100%;
            }

            .navbar__menu li {
                width: 100%;
                text-align: center;
            }

            .navbar__login {
                display: none;
                justify-content: center;
                width: 100%;
            }

            .navbar__toggleBtn {
                display: block;
            }

            .navbar__menu.active,
            .navbar__login.active {
                display: flex;
            }

            /* 헤더 종료 */



            /* 메인 */
            .book {
                display: flex;
                flex-direction: column;
            }

            .booksimg img {
                margin: 0;
                padding: 0;
                align-items: center;
                justify-content: center;
            }

            input[type=text] {
                height: 100PX;
                width: 500PX;
            }

            .btn {
            margin-left: 10px;
            font-size: 20px;
            font-weight: bolder;
            border-radius: 10px;
        }



            /* 푸터 시작 */
            #footerimg {
                width: 200px;
            }

            #footer-p {
                font-size: 20px;
                /* color: black; */
            }


        }





    </style>

</head>

<body>
    <!-- 헤더 시작 -->
    <nav class="navbar">
        <div class="navbar__lo">
            <a href="/user/views/main" target="_self">
                <img id="headerimg" src="/img/logo.png" alt="메인 로고">
            </a>
        </div>

        <ul class="navbar__menu">
            <li><a id="header" href="/user/views/books/books_korea">도서</a></li>
            <li><a href="/user/views/member/favorites">즐겨찾기</a></li>
            <li><a href="/user/views/member/mypage">마이페이지</a></li>
        </ul>

        <ul class="navbar__login">
          <%
          String hp_ID = (String)session.getAttribute("hp_ID");
          //null체크
          if( hp_ID != null) 
          {   //로그인 상태
          %>
            <span>${hp_ID}님</span>
            <li><a href="/logout">로그아웃</a></li>
          <%		
          }
          else
          {  //로그아웃 상태
          %>
            <li><a href="/user/views/member/login">로그인</a></li>
          <%
          }
          %>
        </ul>

        <a href="#" class="navbar__toggleBtn">
            <i class="fas fa-bars"></i>
        </a>
    </nav>
    <!-- 헤더 종료 -->

    
    <!-- 도서 목록 -->
    <section id="one" class="section">
    
    <c:forEach var="hp_book" items="${booklistbyIndex}">
    
    
    
        <div class="book">

            <div class="booksimg">
                <img src="/upload/${hp_book.book_Image}" alt="책">
            </div>

            <div class="books-content">
                <div class="books-title">
                    <h2>${hp_book.book_Title}</h2>
                </div>
                <div class="writer">
                    <p>${hp_book.book_Writer} 지음</p>
                </div>
                <div class="favorites">
                    <button class="button-favor" type="button" name="즐겨찾기에 추가">즐겨찾기에 추가</button>
                </div>
                <div class="read">
                    <button class="button-read" type="button" name="읽기">읽기</button>
                </div>
                <div class="rating">
                    <div>
                        <button class="button-rating" type="button" name="좋아요"><i class="fas fa-thumbs-up"> 0</i></button>
                    </div>
                    <div>
                        <button class="button-rating" type="button" name="싫어요"><i class="fas fa-thumbs-down"> 0</i></button>
                    </div>
                </div>

            </div>
        </div>
        <div class="summary">
            <div class="p-1">
                책 소개
            </div>
            <div class="p-2">
                ${hp_book.book_Introduce}
            </div>
        </div>
        
  </c:forEach>
        
        
        <div class="review">
            <div class="review-1">
                리뷰
            </div>
            <div class="review-2">
                <input type="text">
                <button id="btn1" class="btn" type="button" href='#'>등록</button>
            </div>
            <table class="table">
                <tr>
                    <td id="num">번호</td>
                    <td id="name">닉네임</td>
                    <td id="text">내용</td>
                    <td id="day">날짜</td>
                </tr>
            </table>
        </div>
        
          
        
    </section>
    <!-- 도서 목록 종료 -->




    <!-- 푸터 -->
    <div id="foo">
        <footer id="footer" class="footer">
            <div class="footer-1">
                <img id="footerimg" src="/img/footerimg.png" alt="부키도키">
            </div>
            <div class="footer-2">
                <a id="footer-p" class="footer-p" href="/user/views/member/login">1 : 1 문의</a>
                <a id="footer-p" class="footer-p" href="/user/views/member/login">공지사항</a>
            </div>
        </footer>
    </div>
    <!-- 푸터 종료 -->



    <script>
        // 헤더 스크립트
        const toggleBtn = document.querySelector('.navbar__toggleBtn');
        const menu = document.querySelector('.navbar__menu');
        const login = document.querySelector('.navbar__login');

        toggleBtn.addEventListener('click', () => {
            menu.classList.toggle('active');
            login.classList.toggle('active');
        });
    </script>

</body>
</html>