<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %> 
    
  <style>
    
    :root {
        --accent-color: rgba(66, 183, 226, 0.8);
        --background-color: #bfc8d7;
        --heder-color:  rgba(0, 0, 0, 0.8);
        }

    textarea{
      resize: none;
      width: 700px;
    }

    .joinForm {
      background-color: var(--background-color);
    }

    .t1 {

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

   
    <div class="joinForm container">
      <div class="joinSe1">
        <div><h3>회원가입</h3></div>
      </div>
      <div class="welcome">
        <h3>부키도키 사이트에 오신 것을 환영합니다.</h3>
        <h5>-이름과 이메일을 입력해 주시면 가입여부를 확인 후 회원가입 절차가 이루어집니다.</h5>
      </div>
      <div class="t1">
        <div>이용약관</div>
        
        <div>
	        <c:import url="agree1.jsp" />
        </div>          
        
        <div><input class="check" type="checkbox">위 약관에 동의합니다.</div>
      </div>
      <div class="t2">
        <div>개인정보보호정책</div>
        
        <div>
        	<c:import url="agree2.jsp" />
        </div>
                    
        <div><input class="check" type="checkbox">위 개인정보취급방침에 동의합니다.</div>
      </div>
      <div class="t3">
        <div>개인정보의 수집 및 이용목적</div>
        
        <div>
        	<c:import url="agree3.jsp" />
        </div>
                  
        <div><input class="check" type="checkbox">위 개인정보의 수집 및 이용목적에 동의합니다.</div>
      </div>
      <div class="imageBtn">
      <input type="image" onclick="agree();" src="/img/member/btn_join.gif">
      </div>
    </div>

