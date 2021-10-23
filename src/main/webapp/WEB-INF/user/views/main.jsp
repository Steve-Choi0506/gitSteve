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
    <title>홈</title>

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

        /* 페이지 스크롤 없애기 */
        html {
            overflow: hidden;
        }

        /* 페이지 너비 */
        .section {
            width: 100%;
            height: 100%;
            position: relative;
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


         /* 1페이지 케러셀 */

        #one {
            /* border: 1px solid red; */
            padding: 50px;
            top: 50px;
        }

        .c-carousel {
            height: 700px;
            width: 100%;
            max-width: 1200px;
            /* position: relative; */
            display: flex;

            position: absolute;
            top: 42%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .c-carousel-item {
            position: absolute;
            left: 0;
            top: 0;
            opacity: 0;
            width: 100%;
            height: 100%;
            transition: all 0.5s ease-in-out;
        }

        .c-carousel-item.active {
            opacity: 1;
        }

        .c-carousel-item img {
            position: relative;
            width: 100%;
            height: 100%;
            object-fit: cover;
            object-position: center;
        }

        .c-carousel-control-prev {
            position: absolute;
            width: auto;
            padding: 0 40px;
            height: 100%;
            left: 50px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #e2e2e2;
            font-size: 40px;
            cursor: pointer;
        }

        .c-carousel-control-next {
            position: absolute;
            width: auto;
            padding: 0 40px;
            height: 100%;
            right: 50px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #e2e2e2;
            font-size: 40px;
            cursor: pointer;
        }

        .c-carousel-indicators {
            position: absolute;
            bottom: 50px;
            left: 50%;
            transform: translateX(-50%);
            width: 70%;
            height: auto;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .c-carousel-indicators ul {
            position: relative;
            width: 100%;
            height: 100px;
            display: flex;
            align-items: center;
            justify-content: space-around;
        }

        .c-carousel-indicator-li {
            position: relative;
            display: inline-block;
            height: auto;
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            z-index: 3;
            cursor: pointer;
            transition: all 0.3s ease-in-out;

            top: 180px;
        }

        .c-carousel-indicator-li.active {
            transform: scale(1.1);
            border: 2px solid #aaaaaa;
        }
        /* 1페이지 종료 */



        /* 2페이지 시작 */

        /* 2페이지 이미지 */
        .section > img {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 100%;
            max-width: 1100px;
        }

        #btn1 {
            position: absolute;
            top: 200px;
            left: 75%;
            background-color: var(--accent-color);
            width: 100px;
            height: 100px;
            border-radius: 5px;
        }
        /* 2페이지 버튼 종료 */






        /* 3페이지 시작 */
        .books {
            display: flex;
            /* border: 1px solid red; */
            width: 100%;
            height: 100%;
            flex-direction: column;
        }

        .books img {
            width: 200px;
            height: 300px;
        }

        .books-korea {
            display: flex;
            /* border: 1px solid red; */
            margin-top: 80px;
            height: 300px;
            align-items: center;
            flex-flow: row wrap;
            justify-content: space-between;
            overflow: hidden;
        }

        .books-over {
            display: flex;
            /* border: 1px solid blue; */
            height: 300px;
            align-items: center;
            flex-flow: row wrap;
            justify-content: space-between;
            overflow: hidden;
            margin-top: 50px;
        }

        .books-new {
            display: flex;
            /* border: 1px solid purple; */
            height: 300px;
            align-items: center;
            flex-flow: row wrap;
            justify-content: space-between;
            overflow: hidden;
            margin-top: 50px;
        }

        #p1 {
            background-color: var(--accent-color);
            font-size: 30px;
            width: 150px;
            height: 100px;
            line-height: 100px;
            align-items: center;
            text-align: center;
            
            margin: 0;
        }

        #p2 {
            background-color: var(--accent-color);
            font-size: 30px;
            width: 150px;
            height: 100px;
            line-height: 100px;
            align-items: center;
            text-align: center;

            margin: 0;
        }

        #p3 {
            background-color: var(--accent-color);
            font-size: 30px;
            width: 150px;
            height: 100px;
            line-height: 100px;
            align-items: center;
            text-align: center;

            margin: 0;
        }
        /* 3페이지 종료 */






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





    <!-- 1 페이지 -->
    <section id="one" class="section">
        <!-- 캐러셀 슬라이드 html 시작 -->
        <div class="c-carousel" data-interval="5000">
            <div class="c-carousel-item active">
                <img src="/img/1.png" alt="첫번째 사진">
            </div>
            <div class="c-carousel-item">
                <img src="/img/2.png" alt="두번째 사진">
            </div>
            <div class="c-carousel-item">
                <img src="/img/3.png" alt="세번째 사진">
            </div>
            <div class="c-carousel-item">
                <img src="/img/4.png" alt="네번째 사진">
            </div>
            <div class="c-carousel-item">
                <img src="/img/5.png" alt="다섯번째 사진">
            </div>
            <div class="c-carousel-control-prev">
                <i class="fas fa-chevron-left"></i>
            </div>
            <div class="c-carousel-control-next">
                <i class="fas fa-chevron-right"></i>
            </div>
            <div class="c-carousel-indicators">
                <ul>
                    <li class="c-carousel-indicator-li active"></li>
                    <li class="c-carousel-indicator-li"></li>
                    <li class="c-carousel-indicator-li"></li>
                    <li class="c-carousel-indicator-li"></li>
                    <li class="c-carousel-indicator-li"></li>
                </ul>
            </div>
        </div>

        <!-- 캐러셀 슬라이드 html 끝 -->        
    </section>
    <!-- 1 페이지 종료 -->






    <!-- 2페이지 -->
    <section id="two" class="section">
        <!-- 더미 이미지 -->
        <img src="/img/2.png" alt="2페이지">
        <!-- 버튼 -->
        <button id="btn1" class="btn" type="button" onclick="location.href='#'">결제하기</button>
    </section>
    <!-- 2 페이지 종료 -->






    <!-- 3페이지 -->
    <section id="three" class="section">
        <div class="books">
            <div class="books-korea">
                <div id="p1">국내도서</div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="국내도서"></a></div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="국내도서"></a></div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="국내도서"></a></div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="국내도서"></a></div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="국내도서"></a></div>
            </div>
            <div class="books-over">
                <div id="p2">국외도서</div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="해외도서"></a></div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="해외도서"></a></div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="해외도서"></a></div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="해외도서"></a></div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="해외도서"></a></div>
            </div>
            <div class="books-new">
                <div id="p3">신간도서</div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="신간도서"></a></div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="신간도서"></a></div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="신간도서"></a></div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="신간도서"></a></div>
                <div><a href="/user/views/books/books-introduction"><img src="/img/books/book.png" alt="신간도서"></a></div>
            </div>
        </div>
    </section>

    <!-- 3 페이지 종료 -->


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
            <a id="footer-p" class="footer-p" href="/user/views/member/inquiry_history?hp_ID=${hp_ID}">1 : 1 문의</a>
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

        // 페이지 스크롤 스크립트
        window.addEventListener("wheel", function (e) {
            e.preventDefault();
        }, { passive: false });


        var $html = $("html");

        var page = 1;

        var lastPage = $(".content").length;

        $html.animate({ scrollTop: 0 }, 10);



        $(window).on("wheel", function (e) {

            if ($html.is(":animated")) return;

            if (e.originalEvent.deltaY > 0) {
                if (page == lastPage) return;

                page++;
            } else if (e.originalEvent.deltaY < 0) {
                if (page == 1) return;

                page--;
            }
            var posTop = (page - 1) * $(window).height();

            $html.animate({ scrollTop: posTop });

        });


        // 헤더 스크립트
        const toggleBtn = document.querySelector('.navbar__toggleBtn');
        const menu = document.querySelector('.navbar__menu');
        const login = document.querySelector('.navbar__login');

        toggleBtn.addEventListener('click', () => {
            menu.classList.toggle('active');
            login.classList.toggle('active');
        });






        // 케러셀 스크립트
        const carousel = document.querySelector(".c-carousel");
        const nextButton = document.querySelector(".c-carousel-control-next");
        const prevButton = document.querySelector(".c-carousel-control-prev");
        const carouselItems = document.querySelectorAll(".c-carousel-item");
        const carouselImages = document.querySelectorAll(".c-carousel-item img");
        const indicatorLi = document.querySelectorAll(".c-carousel-indicator-li");
        const indicatorUl = document.querySelector(".c-carousel-indicators ul");
        var itemCount = carouselItems.length;
        var timeCount = 0;
        var autoTimer = "0";
        var indicatorUlWidth = indicatorUl.offsetWidth;
        var tempUrl = "";
        var imgCounter = 0;
        var timeInterval = 0;
        var imgUrls = [];
        var indicatorWidth = indicatorUlWidth / (itemCount + 1.5);

        carouselImages.forEach((item, i) => {
            imgUrls[i] = item.src;
        });

        function autoNext() {
            var itemIndex = 0;
            carouselItems.forEach((item, i) => {
                if (item.classList.contains("active")) {
                    itemIndex = i;
                }
            });
            removeActiveStatus();
            itemIndex++;
            if (itemIndex >= itemCount) {
                itemIndex = 0;
            }
            addActiveStatus(itemIndex);
        }

        if (carousel.hasAttribute('data-interval')) {
            timeInterval = carousel.getAttribute('data-interval');
            autoTimer = setInterval(autoNext, timeInterval);
        }

        window.addEventListener('resize', () => {
            indicatorUlWidth = indicatorUl.offsetWidth;
            indicatorWidth = indicatorUlWidth / (itemCount + 1.5);
            indicatorLi.forEach((item, i) => {
                item.style.width = indicatorWidth + "px";
                item.style.height = (indicatorWidth / 1.777) + "px";
            });
        });

        indicatorLi.forEach((item, i) => {
            item.style.width = indicatorWidth + "px";
            item.style.height = (indicatorWidth / 1.777) + "px";
            tempUrl = imgUrls[i];
            item.style.backgroundImage = "url('" + tempUrl + "')";
            item.addEventListener('click', () => {
                removeActiveStatus();
                addActiveStatus(i);
                clearInterval(autoTimer);
                autoTimer = setInterval(autoNext, 5000);
            })
        });

        nextButton.addEventListener('click', () => {
            var itemIndex = 0;
            carouselItems.forEach((item, i) => {
                if (item.classList.contains("active")) {
                    itemIndex = i;
                }
            });
            removeActiveStatus();
            itemIndex++;
            if (itemIndex >= itemCount) {
                itemIndex = 0;
            }
            addActiveStatus(itemIndex);
            clearInterval(autoTimer);
            autoTimer = setInterval(autoNext, 5000);
        });

        prevButton.addEventListener('click', () => {
            carouselItems.forEach((item, i) => {
                if (item.classList.contains("active")) {
                    itemIndex = i;
                }
            });
            removeActiveStatus();
            itemIndex--;
            if (itemIndex < 0) {
                itemIndex = itemCount - 1;
            }
            addActiveStatus(itemIndex);
            clearInterval(autoTimer);
            autoTimer = setInterval(autoNext, 5000);
        });

        function removeActiveStatus() {
            carouselItems.forEach((item, i) => {
                item.classList.remove("active");
                indicatorLi[i].classList.remove("active");
            });
        }

        function addActiveStatus(target) {
            carouselItems[target].classList.add("active");
            indicatorLi[target].classList.add("active");
        }


    </script>




</body>

</html>