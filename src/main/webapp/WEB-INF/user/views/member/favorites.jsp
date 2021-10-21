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
    <title>즐겨찾기</title>

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




        .section {
            display: flex;
            flex-wrap: wrap;
        }

        .btn {
            font-size: 15px;
            font-weight: bolder;
            border-radius: 8px;
            background-color: red;
            height: 30px;
            margin-top: 10px;
        }


        .box {
            margin-left: 80px;
            margin-top: 100px;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
        }

        .box > a {
            text-align: center;
            font-weight: bold;
            color: black;
        }

        .box img {
            width: 150px;
            height: 200px;
        }

        .t {
            display: flex;
            justify-content: space-between;
        }

        .t a {
            color: black;
            text-align: center;
            font-weight: bold;
            color: black;
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
            float: bottom;
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
            <li><a href="/user/views/books/books_korea">도서</a></li>
            <li><a id="header" href="/user/views/member/favorites">즐겨찾기</a></li>
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
    
    <c:forEach var="my_books" items="${my_books_list}">
    
    <section id="one" class="section">
  <div class="box"><a href="/user/views/books/books_introduction"><img src="/upload/${my_books.book_Image}" alt="도서"></a>
  <div class="t"><a href="/user/views/books/books_introduction"><p>${my_books.book_Index}번째 도서 ${my_books.book_Title} </p></a><button class="btn" type="button" href='#'>삭제</button></div>
  </div>
    </section>
    <!-- 도서 목록 종료 -->

</c:forEach>

    <!-- 푸터 -->
    <footer class="footer">
      <div class="footer-1">
          <img id="footerimg" src="/img/footerimg.png" alt="부키도키">
      </div>
      <div class="footer-2">
        <%
        //null체크
        if( hp_ID != null)
        {   //로그인 상태
        %>
          <span>${hp_ID}님</span>
          <a id="footer-p" class="footer-p" href="/user/views/member/inquiry_history">1 : 1 문의</a>
          <a id="footer-p" class="footer-p" href="/user/views/member/notice">공지사항</a>
        <%		
        }
        else
        {  //로그아웃 상태
        %>
          <a id="footer-p" class="footer-p" href="/user/views/member/login">1 : 1 문의</a>
          <a id="footer-p" class="footer-p" href="/user/views/member/login">공지사항</a>
        <%
        }
        %>
      </div>
  </footer>
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