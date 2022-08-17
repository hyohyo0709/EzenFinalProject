<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>

<style>
    body {
      min-height: 100vh;
		background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
    /*   background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%); */
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>   
  
<!-- Bootstrap CSS -->
  	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">  
 
    <link href="../assets/css/style.css" rel="stylesheet" />
    <title>회원가입</title>
    <link
      rel="short icon"
      href="../assets/img/favicon.png"
      type="image/x-icon"
    />
   
<!--     <script type="text/javascript" src="./joinCheck.js"></script>
 -->    
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script>

	    //회원가입 버튼을 누르면 
	$(function() {
		$('#submit').click(function() {
		let name =$('#member_name').val();	
		let id = $('#member_id').val();
		let pass = $('#member_pass').val();
		let passChk = $('#member_passChk').val();
		let phone =$('#member_phone').val();		
		let email =$('#member_email').val();
		let address =$('#member_address').val();
		
		
		
		if($('#member_name').val()==0){
			alert('이름을 입력하세요.');
			return false;
		};
			
		
		if($('#member_id').val()==0){
			alert('아이디를 입력하시오.');
			return false;
		};
			
			
		if($('#member_pass').val()==0){
			alert('비밀번호를 입력하세요.');
			return false;
		};
		
		if($('#member_phone').val()==0){
			alert('휴대폰 번호를 입력하세요.');
			return false;
		};			

		
		if($('#member_email').val()==0){
			alert('이메일 주소를 입력해주세요.');
			return false;
		};	
		
									

		//<아이디의 조건>
		// /^[a-zA-Z0-9]$/ 은 a-z소문자 A-Z대문자 아무거나,0-9숫자 아무거나 사용할수 있다는 뜻
		let idPattern = /^[a-zA-Z0-9]{4,12}$/;

		//<비밀번호의 조건 >
		let passPattern =/^[a-zA-Z0-9]{4,12}$/;

		//휴대폰 번호의 조건
		//let phone =  /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
		
		//<이메일의 조건>
		let emailPattern =/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;

		//<이름의 조건>
		//let namePattern = /^[가-힣]$/;
		

 
		

		//아이디 조건문 
		if(!(idPattern.test(member_id))){
			alert('아이디는 4~12자리의 영문 대소문자와 숫자로만 입력하세요');
			/* $('#pwd').focus() */
			return false;
		}
		
		//비밀번호 조건문 
		if(!(passPattern.test(member_pass, member_passChk))){
			alert('비밀번호는 4~12자리의 영문 대소문자와 숫자로만 입력하세요');
			return false;
			}
		
		// 비밀번호 일치
		  if (!(member_pass === member_passChk)) {
            alert("비밀번호가 일치하지 않습니다.");
            return false;
          }      
		
		//휴대폰 번호 조건문 
		if(!(passPattern.test(member_phone))){
			alert('휴대폰 번호 형식이 잘못되었습니다.');
			return false;
			}
		

/* 		//이메일 조건문 	 
		 if (!(emailPattern.test(member_email))){
			 alert ('이메일형식이 잘못되었습니다');
			 return false;
			} */
		
		//이름 조건문
/* 		 if (!(namePattern.test(member_name))){
			 alert ('이름은 2-5자만 입력가능합니다');
			 return false;
			 }
 */
 
		alert('회원가입이 완료됐습니다.');

		return true;
				
		 });
	 });    
   
    </script> 
  </head>
  
  <body>  
  <!-- Nabar start -->
    <%@ include file = "../common/header.jsp"%>
  <!-- Header end -->
  <!-- breadclumb end -->
  <!-- head end -->

  <!-- detail start -->
 <!-- Bootstrap CSS -->

<body>
  <div class="container">
     <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원가입</h4>
<!--         <form class="validation-form" method="post"  action="/member_join" novalidate >
 -->        
        <form class="validation-form" method="post"  action="/member_join" id="join"  novalidate>
          <div class="row">
              <div class="mb-3">
              <label for="id">아이디</label>
              <input type="text" class="form-control" name="member_id" placeholder=""  />
<!--             <div class="invalid-feedback">
                아이디를 입력해주세요.
              </div>  -->
            </div>
          </div>
          
           <div class="mb-3">
              <label for="member_name">이름</label>
              <input type="text" class="form-control" name="member_name" placeholder=""  />
<!--                <div class="invalid-feedback">
                이름을 입력해주세요.
              </div>  -->
            </div>  
          
          
          <div class="mb-3">
            <label for="member_pass">비밀번호</label>
            <input type="password"  class="form-control" name="member_pass" placeholder=""  />
<!--          	<div class="invalid-feedback">
              비밀번호를 입력해주세요.
            </div > -->
          </div> 
             
          <div class="mb-3">
            <label for="member_passChk">비밀번호 확인</label>
            <input type="password"  class="form-control" name="member_passChk" placeholder=""  />
<!--              <div class="invalid-feedback">
              비밀번호를 다시 입력해주세요.
            </div>  -->
          </div> 
                
          <div class="mb-3">
            <label for="member_phone">휴대폰 번호</label>
            <input type="text" class="form-control" name="member_phone"  placeholder=""  />
<!--             <div class="invalid-feedback">
              휴대폰 번호를 입력해주세요.
            </div>  -->
          </div>
          <div class="mb-3">
            <label for="member_email">이메일</label>
            <input type="text" class="form-control" name="member_email" placeholder="you@example.com"  />
<!--              <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>  -->
          </div>

          <div class="mb-3">
            <label for="member_address">주소</label>
            <input type="text" class="form-control" name="member_address" placeholder="서울특별시 강남구" />
<!--             <div class="invalid-feedback">
              주소를 입력해주세요.
            </div> -->
          </div>

          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" />
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-dark btn-lg btn-block" type="submit" id="submit">가입 완료</button>
      </form>
      </div>          
    </div>
    <footer class="my-5 text-center text-small">
    </footer> 
    </div>
  </body>
  
  <!-- detail end -->

  <!-- Footer Start -->
 <%@ include file = "../common/footer.jsp"%>
  <!-- Footer end -->
  
  
</html>