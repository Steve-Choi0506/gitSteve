<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>

 <meta charset="UTF-8">
 
    <title>마이 페이지</title>



    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            /* font-size: 32px; */
            font-weight: bold;
        }

        html, body {
            width: 100%;
            height: 100%;
            background-color: #bfc8d7
        }

        /* 챠�짚챘�� */
        .header {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;

            height: 75px;
            padding: 1rem;
            color: white;
            background: rgba(0, 0, 0, 0.8);
            font-weight: bold;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1;
        }

        a, a:link, a:visited {
            font-size: 25px;
            color: rgba(255, 255, 255, 0.7);
            text-decoration: none;
        }

        #headerimg {
            width: 90px;
            height: 70px;
        }


        /* 챠�짚챘�� 챘��챘징짯챘째�챙�짚 */
        ul li {
            list-style: none;
        }

        #menu {
		font:bold 16px "malgun gothic";
		color:black;
		line-height: 50px; 
		text-align: center;
        }

        #menu > ul > li {
            float:left;
            width:140px;
            position:relative;
        }

        #menu > ul > li > ul {
            width:130px;
            display:none;
            position: absolute;
            font-size:14px;
            background: skyblue;
        }

        #menu > ul > li:hover > ul {
            display:block;
            
        }

        #menu > ul > li > ul > li:hover {
            background: orange;
            transition: ease 1s;
            }
        

        /* 챠�짚챘�� 챙짖�챘짙� */


        /* 챠��챙�쨈챙짠� 챘��챘쨔� */
        section {
            width: 100%;
            position: relative;
        }



        /* 챘��챙�� 챙�쨈챘짱쨍챙짠� */
        .section {
            height: 3000px;
        }




        /* 챠�쨍챠�째 */
        .footer {
            width: 100%;
            height: 200px;
            background: rgba(0, 0, 0, 0.8);
        }

        #footerimg {
            margin: 0;
            margin-left: 50px;
            margin-top: 50px;
        }

        .footer-p {
            margin-left: 100px;
        }

        #footer-p {
            font-size: 30px;
        }

        /* 챠�쨍챠�째 챙짖�챘짙� */





    </style>

</head>

<body>
    <!-- 챠�짚챘�� -->
    <header class="header">

        <a href="/user/views/member/main" target="_self">
            <img id="headerimg" src="/img/logo.png" alt="챘짤�챙�쨍 챘징�챗쨀�">
        </a>

        <div id="menu">
            <ul>
                <li><a href="#">챘��챙��</a>
                    <ul>
                        <li><a href="#">챗쨉짯챘�쨈</a></li>
                        <li><a href="#">챠�쨈챙�쨍</a></li>
                    </ul>
                </li>
            </ul>
        </div>

        <a class="nav_two" href="#">챙짝�챗짼짢챙째쩐챗쨍째</a>
        <a class="nav_three" href="#">챘짠�챙�쨈챠��챙�쨈챙짠�</a>


        <nav>
            <a class="login" href="/user/views/member/login">챘징�챗쨌쨍챙�쨍</a>
        </nav>
    </header>
    <!-- 챠�짚챘�� 챙짖�챘짙� -->

    

    
    <!-- 챘��챙�� 챘짧짤챘징� -->
    <section id="one" class="section">

    </section>
    <!-- 챘��챙�� 챘짧짤챘징� 챙짖�챘짙� -->




    <!-- 챠�쨍챠�째 -->
    <footer class="footer">
        <img id="footerimg" src="footerimg.png" alt="챘쨋�챠�짚챘��챠�짚">
        <a id="footer-p" class="footer-p" href="login.html">1 : 1 챘짭쨍챙��</a>
        <a id="footer-p" class="footer-p" href="login.html">챗쨀쨉챙짠�챙�짭챠�짯</a>
    </footer>
    <!-- 챠�쨍챠�째 챙짖�챘짙� -->

</body>
</html>