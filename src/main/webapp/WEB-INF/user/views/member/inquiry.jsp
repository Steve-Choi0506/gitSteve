<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %> 
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%
    Date nowTime = new Date();
    SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 ");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1:1 문의 작성</title>

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
        }


        /* 어사이드 바 */
        .aside {
            /* border: 1px solid red; */
            position: relative;
            width: 250px;
            margin-top: 80px;
            font-size: 25px;
            font-weight: bolder;
            line-height: 60px;
            text-align: center;
            /* background-color: var(--heder-color); */
        }

        .aside-1 {
            list-style: none;
        }

        .aside a {
            color: var(--heder-color);
        }

        .aside-1 li:hover {
            background-color: var(--accent-color);
            border-radius: 8px;
        }

        #a-3 {
            color: var(--accent-color)
        }

        #a-3:hover {
            color: var(--text-color);
        }


        /* 메인 */
        .main {
            /* border: 1px solid blue; */
            display: flex;
            position: relative;
            width: 100%;
            margin-top: 100px;
            flex-direction: column;
            align-items: center;
            margin-left: 50px;
            padding-bottom: 100px;
        }

        .main-1 {
            border: 1px solid black;
            width: 500px;
            line-height: 50px;
            font-size: 20px;
            font-weight: bolder;
            margin-bottom: 100px;
            padding-left: 20px;
            padding-right: 20px;
            padding-bottom: 20px;
        }

        .main p {
            border: 3px solid black;
            width: 150px;
            text-align: center;
            font-size: 35px;
            font-weight: bolder;
        }

        input[type=text1] {
            border-top: none;
            border-left: none;
            border-right: none;
            border-bottom: 2px solid black;
            background-color: var(--background-color);
            width: 300px;
            font-size: 20px;
            font-weight: bolder;
        }

        .text2 {
            display: flex;
            justify-content: space-between;
        }

        .text3 {
            width: 100%;
            height: 300px;
            background-color: var(--background-color);
            border: 2px solid black;
            font-size: 20px;
            font-weight: bolder;
            font-family: sans-serif;
        }

        /* 버튼 */
        .button {
            width: 100px;
            height: 50px;
            border-radius: 10px;
            text-align: center;
            font-size: 20px;
            font-weight: bolder;
            justify-content: flex-end;
            margin-bottom: 20px;
            margin-top: 30px;
        }

        .button:hover {
            background-color: var(--accent-color);
        }

        .btn1 {
            display: flex;
            justify-content: center;
        }





        /* 푸터 */
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
            .section {
                display: flex;
                flex-direction: column;
                width: 100%;
            }

            .aside {
                width: 100%;
            }

            .aside-1 {
                display: flex;
                justify-content: space-between;
            }

            .main {
                margin: 0;
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
            <li><a href="/user/views/books/books_korea">도서</a></li>
            <li><a href="/user/views/member/favorites">즐겨찾기</a></li>
            <li><a id="header" href="/user/views/member/mypage">마이페이지</a></li>
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





    <!-- 1 페이지 -->
    <section id="one" class="section">
        <aside class="aside">
            <ul class="aside-1">
                <li><a id="a-1" href="/user/views/member/mypage">홈</a></li>
                <li><a id="a-2" href="/user/views/member/change_infor">정보 변경</a></li>
                <li><a id="a-3" href="/user/views/member/inquiry_history?hp_ID=${hp_ID}">1:1 문의</a></li>
                <li><a id="a-4" href="/user/views/member/notice">공지 사항</a></li>
            </ul>
        </aside>
        <main class="main">
            <div class="main-1">
                <div>
                    <p>1:1 문의</p>
                </div>
				<form action="<c:url value="/addQnAByuser"/>" method="post">
	             	<div class="hp_Index">
	             		<input type="hidden" name="hp_Index" value="${memberDto.hp_Index}">
	             	</div>
	                <div class="hp_ID">
	             		<input type="hidden" name="hp_ID" value="${memberDto.hp_ID}">
	             	</div>
	                <div class="text1">
	                  제목 : <input type="text1" name="qna_Title" value="${qna_Title}">
	                </div>
	                <div class="text2">
	                    <span>문의사항</span>
	                    <span>작성일자 : <%= sf.format(nowTime) %> </span>
	                </div>
	                <textarea class="text3" name="qna_Content" value="${qna_Content}" ></textarea>
	                <div class="btn1">
	                    <button id="btn1" class="button" type="submit" >등록하기</button>
	                </div>
              </form>
            </div>

        </main>
    </section>
    <!-- 1페이지 종료 -->



    <!-- 푸터 -->
    <footer class="footer">
        <div class="footer-1">
            <img id="footerimg" src="/img/footerimg.png" alt="부키도키">
        </div>
        <div class="footer-2">
            <a id="footer-p" class="footer-p" href="/user/views/member/login?hp_ID=${hp_ID}">1 : 1 문의</a>
            <a id="footer-p" class="footer-p" href="/user/views/member/login">공지사항</a>
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