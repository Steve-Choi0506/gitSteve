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
    <title>회원가입</title>

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


        /* 페이지 너비 */
        section {
            width: 100%;
            position: relative;
        }



        .section {
          margin: 0;
          padding: 0;
        }

        #main {
          position: relative;
          width: 100%;
          height: 1100px;
          display: flex;
          align-items: center;
          justify-content: center;

          margin: 0;
          padding: 0;
        }

        #join {
          display: flex;
          position: relative;
          border: solid black 1px;
          width: 400px;
          height: 850px;
          flex-direction: column;
          align-items: center;
          padding: 2%;
          margin: 10px;

        }

        #join a {
          color: black;
          font-weight: bolder;
        }

        input[type=text] {
          text-align: center;
          position: relative;
          display: flex;
          flex-direction: row;
          justify-content: space-between;
          width: 250px;
          height: 30px;
          border-radius: 2px;
        }

        input[type=password] {
          text-align: center;
          position: relative;
          display: flex;
          flex-direction: row;
          justify-content: space-between;
          width: 250px;
          height: 30px;
          border-radius: 2px;
        }

        input[type=email] {
          text-align: center;
          position: relative;
          display: flex;
          flex-direction: row;
          justify-content: space-between;
          width: 250px;
          height: 30px;
          border-radius: 2px;
        }

        input[type=submit] {
          position: relative;
          width: 250px;
          height: 30px;
          margin-bottom: 10px;
          border-radius: 8px;

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
      <div id="wrap">
        <div id="main">
          <div id="join">
            <form method="post" action="/userjoin">
              <p>아이디</p>
	              <input type="text" name="hp_ID" id="hp_ID" required>
	              <button onclick="location.href='javascript:check_ID();'">중복 확인</button>
				  <input type="hidden" name="check_hp_ID" id="check_hp_ID" value="no">
              <p>패스워드</p>
	              <input type="password" name="hp_Password" id = "pw" onchange="check_Password()" required>
              <p>패스워드 확인</p>
	              <input type="password" name="hp_repassword" id = "pw2" onchange="check_Password()" required>
	              <span id="confirmMsg"></span>
              <p>이름</p>
	              <input type="text" name="hp_Name" required>
              <p>생년월일(년도)</p>
	              <input type="text" name="hp_Birthday_Year" required>
              <p>생년월일(월)</p>
	              <input type="text" name="hp_Birthday_Month" required>
              <p>성별</p>
	              <label><input type="radio" name="hp_Sex" value="1" checked="checked">남</label>
	              <label><input type="radio" name="hp_Sex" value="2">여</label>
              <p>이메일</p>
	              <input type="email" name="hp_Email" required>
              <p>전화번호</p>
              	<input type="text" name="hp_Phone" required>
              <input type="hidden" name="hp_Ticket" value=0 required>
              <input type="hidden" name="hp_Auth" value=0 required>
              </br></br></br>
              <input type="submit" value="회원가입">
            </form>
            <a href="/user/views/member/login">로그인화면으로</a>
          </div>
        </div>
      </div>


    </section>
<!-- 1페이지 종료 -->



    <!-- 푸터 -->
    <footer class="footer">
        <div class="footer-1">
            <img id="footerimg" src="/img/footerimg.png" alt="부키도키">
        </div>
        <div class="footer-2">
            <a id="footer-p" class="footer-p" href="/user/views/member/login">1 : 1 문의</a>
            <a id="footer-p" class="footer-p" href="/user/views/member/login">공지사항</a>
        </div>
    </footer>
    <!-- 푸터 종료 -->


    <script type="text/javascript">
        // 헤더 스크립트
        const toggleBtn = document.querySelector('.navbar__toggleBtn');
        const menu = document.querySelector('.navbar__menu');
        const login = document.querySelector('.navbar__login');

        toggleBtn.addEventListener('click', () => {
            menu.classList.toggle('active');
            login.classList.toggle('active');
        });

        
     // 아이디 중복처리
        function check_ID(){
        var hp_ID = $('#hp_ID').val(); // hp_ID값이 "hp_ID"인 입력란의 값을 저장
        $.ajax({
            url:'/user/views/member/idCheckAjax?hp_ID='+hp_ID, // Controller에서 인식할 주소
            type:'post', // POST 방식으로 전달
            success:function( data ){
                console.log( data ); // 0 : 사용 가능 / 1 : 사용 중
                
                if( !hp_ID ) {
        			alert("아이디를 입력하세요.");
        			return false;
        		}
                
                var data_num = Number( data );
                
                if( data_num == 0 ) {
                	alert('사용 가능한 아이디입니다.');
                	$('check_hp_ID').val("yes");
                } else {
                	alert('이미 사용중인 아이디입니다.');
                	$('check_hp_ID').val("no");
                }
            },
            error:function(){
                alert("에러입니다");
            }
        });
        }

	 // 패스워드 일치 확인
        function check_Password() {
          var password = document.getElementById('pw');
          var repassword = document.getElementById('pw2');
          var confrimMsg = document.getElementById('confirmMsg');
          var correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
          var wrongColor = "#ff0000";	//틀렸을 때 출력되는 색깔
          if (password.value == repassword.value) {//password 변수의 값과 repassword 변수의 값과 동일하다.
            confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
            confirmMsg.innerHTML = "비밀번호 일치";
          } else {
            confirmMsg.style.color = wrongColor;
            confirmMsg.innerHTML = "비밀번호 불일치";
          }
        }


    </script>




</body>

</html>