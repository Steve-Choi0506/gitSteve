<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %> 

<title>약관</title>

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






    textarea{
      resize: none;
      width: 700px;
      height: 250px;
    }

    .joinForm {
      margin-top: 80px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .imageBtn {
      margin-top: 50px;
    }









    /* 푸터 */
    .foo {
      margin-top: 50px;
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
    
    <script>
    var checkboxArray = document.getElementsByClassName('check');

    function agree() {

        //반복문전에 boolean변수에 초기값.
        var isAllCheck = true;
        for(var cbx of checkboxArray) {
          if(cbx.checked == false){
            isAllCheck = false;
            break; //반복문을 탈출하는 키워드
            //continue; //반복문의 해당루프를 탈출하는 키워드
          }
        }
        if(isAllCheck == true){
          window.location.href = '/user/views/member/join'
          
        }else{
          alert('이용약관에 동의하셔야 회원으로 가입하실 수 있습니다.');
        }

      }



      

   </script>


<!-- 헤더 시작 -->
<nav class="navbar">
  <div class="navbar__lo">
      <a href="/user/views/main" target="_self">
          <img id="headerimg" src="/img/logo.png" alt="메인 로고">
      </a>
  </div>

  <ul class="navbar__menu">
      <li><a href="/user/views/books/books_korea">도서</a></li>
      <li><a href="/user/views/member/favorites?hp_ID=${hp_ID}">즐겨찾기</a></li>
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



   
    <div class="joinForm">
      <div class="joinSe1">
        <div><h3>회원가입</h3></div>
      </div>

      <div class="welcome">
        <h3>부키도키 사이트에 오신 것을 환영합니다.</h3>
        <h5>-이름과 이메일을 입력해 주시면 가입여부를 확인 후 회원가입 절차가 이루어집니다.</h5>
      </div>

      <div class="t1">
        <div>이용약관</div>
        <div class="text">
	        <c:import url="agree1.jsp" />
        </div>          
        <div><input class="check" type="checkbox">위 약관에 동의합니다.</div>
      </div>

      <div class="t2">
        <div>개인정보보호정책</div>
        <div class="text">
        	<c:import url="agree2.jsp" />
        </div>
        <div><input class="check" type="checkbox">위 개인정보취급방침에 동의합니다.</div>
      </div>

      <div class="t3">
        <div>개인정보의 수집 및 이용목적</div>
        <div class="text">
        	<c:import url="agree3.jsp" />
        </div>
        <div><input class="check" type="checkbox">위 개인정보의 수집 및 이용목적에 동의합니다.</div>
      </div>

      <div class="imageBtn">
      <input type="image" onclick="agree();" src="/img/member/btn_join.gif">
      </div>
    </div>



<!-- 푸터 -->
<div class="foo">
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