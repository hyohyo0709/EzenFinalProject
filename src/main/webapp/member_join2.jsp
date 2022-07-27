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

    <link href="./assets/css/style.css" rel="stylesheet" />

    <title>회원가입</title>
    <link
      rel="short icon"
      href="./assets/img/favicon.png"
      type="image/x-icon"
    />
    
   
    <style type="text/css">
	.gradient-custom-3 {
	/* fallback for old browsers */
	background: #84fab0;
	
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5));
	
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5))
	}
	.gradient-custom-4 {
	/* fallback for old browsers */
	background: #84fab0;
	
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1));
	
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1))
	}       
    </style>    
    
    <script>
    //////////////////////////////////////
     $(document).ready(function(){    	 
    	 
	    //회원가입 버튼을 누르면 
	    $('#btn').click(function(){
		
		let name =$('#name').val();	
		let userId = $('#id').val();
		let userPassWord = $('#password').val();
		let phone =$('#phone').val();		
		let email =$('#email').val();
		let address =$('#address').val();
		
		
		
		if($('#name').val()==0){
			alert('이름을 입력하세요.');
			return false;
		};
			
		
		if($('#id').val()==0){
			alert('아이디를 입력하시오.');
			return false;
		};
			
			
		if($('#password').val()==0){
			alert('비밀번호를 입력하세요.');
			return false;
		};
		
		if($('#phone').val()==0){
			alert('휴대폰 번호를 입력하세요.');
			return false;
		};			

		
		if($('#email').val()==0){
			alert('이메일 주소를 입력해주세요.');
			return false;
		};	
		
				

    
		//콘솔창에 나타내기 
		console.log(`name:${name},
					id:${userId},
					password:${userPassWord},
					phonr:${phone},
					email:${email},
					address:${address}`);
					

		//<아이디의 조건>
		// /^[a-zA-Z0-9]$/ 은 a-z소문자 A-Z대문자 아무거나,0-9숫자 아무거나 사용할수 있다는 뜻
		let idPattern = /^[a-zA-Z0-9]{4,12}$/;

		//<비밀번호의 조건 >
		let passPattern =/^[a-zA-Z0-9]{4,12}$/;

		//휴대폰 번호의 조건
		//let phone =  /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
		
		//<이메일의 조건>
		let emailPattern =/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		//<이름의 조건>
		let namePattern = /^[가-힣]{2,4}$/;
		

 
		

		//아이디 조건문 
		if(!(idPattern.test(userId))){
			alert('아이디는 4~12자리의 영문 대소문자와 숫자로만 입력하세요');
			/* $('#pwd').focus() */
			return false;
		}
		
		//비밀번호 조건문 
		if(!(passPattern.test(userPassWord))){
			alert('비밀번호는 4~12자리의 영문 대소문자와 숫자로만 입력하세요');
			return false;
			}
		
		//휴대폰 번호 조건문 
		if(!(passPattern.test(userPassWord))){
			alert('비밀번호는 4~12자리의 영문 대소문자와 숫자로만 입력하세요');
			return false;
			}
		

		//이메일 조건문 	 
		 if (!(emailPattern.test(email))){
			 alert ('이메일형식이 잘못되었습니다');
			 return false;
			}
		 //이름 조건문
		 if (!(namePattern.test(name))){
			 alert ('이름은 5자까지 입력가능합니다');
			 return false;
			 }


		return true
	
	 });
 });
    //////////////////////////////////
    </script>
    
 <!--    <script>
    ///////////////////////////////////////////////////
    
     $(function(){    	 
    //회원가입 버튼을 누르면 
	    $('#btn').click(function(){
		
		let name =$('#name').val();	
		let userId = $('#id').val();
		let userPassWord = $('#password').val();
		let phone =$('#phone').val();		
		let email =$('#email').val();
		let address =$('#address').val();
		
		
		
		if($('#name').val()==0){
			alert('이름을 입력하세요.');
			return false;
		};
			
		
		if($('#id').val()==0){
			alert('아이디를 입력하시오.');
			return false;
		};
			
			
		if($('#password').val()==0){
			alert('비밀번호를 입력하세요.');
			return false;
		};
		
		if($('#phone').val()==0){
			alert('휴대폰 번호를 입력하세요.');
			return false;
		};			

		
		if($('#email').val()==0){
			alert('이메일 주소를 입력해주세요.');
			return false;
		};	
		
				
					
					
		//<이름의 조건>
		//let namePattern = /^[가-힣]{2,5}$/;
					
		//<아이디의 조건>
		// /^[a-zA-Z0-9]$/ 은 a-z소문자 A-Z대문자 아무거나,0-9숫자 아무거나 사용할수 있다는 뜻
		let idPattern = /^[a-zA-Z0-9]{4,12}$/;

		//<비밀번호의 조건 >
		let passPattern =/^[a-zA-Z0-9]{4,12}$/;

		//휴대폰 번호의 조건
		let phonePattern =/^[0-9]{10,11}$/;
		
		//<이메일의 조건>
		let emailPattern = /^[0-9a-zA-Z]([-_￦.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_￦.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
		
		

 
		
		 //이름 조건문
/* 		 if (!(namePattern.test(name))){
			 alert ('이름은 5자까지 입력가능합니다');
			 return false;
			 } */
		

		//아이디 조건문 
		if(!(idPattern.test(userId))){
			alert('아이디는 4~12자리의 영문 대소문자와 숫자로만 입력하세요');
			/* $('#pwd').focus() */
			return false;
		}
		
		//비밀번호 조건문 
		if(!(passPattern.test(userPassWord))){
			alert('비밀번호는 4~12자리의 영문 대소문자와 숫자로만 입력하세요');
			return false;
			}
		
		//휴대폰 번호 조건문 
		if(!(phonePattern.test(phone))){
			alert('휴대폰 번호를 확인해주세요');
			return false;
			}
		

		//이메일 조건문 	 
		 if (!(emailPattern.test(email))){
			 alert ('이메일형식이 잘못되었습니다');
			 return false;
			}


		return true
	
	 });
 });
/////////////////////////////////////
  </script>
 -->   
  </head>
  
  <body>
  
   <!-- Nabar start -->

    <%@ include file = "./common/header.jsp"%>
    <!-- Header end -->

  <!-- breadclumb end -->
  <!-- head end -->

  <!-- detail start -->
 <section>
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">회원가입</h2>

<!--  				<form name="login" action="success.htm" method="post">
 -->
                <div class="form-outline mb-4">
                  <input type="text" name="name" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example1cg">이름</label>
                </div>
                
                <div class="form-outline mb-4">
                  <input type="text" name="id" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example3cg">아이디</label>
                </div>
                
                <div class="form-outline mb-4">
                  <input type="password" name="password" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example4cg">비밀번호</label>
                </div>
                
                 <div class="form-outline mb-4">
                  <input type="text" name="address" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example4cdg">주소</label>
                </div>    
                                
                <div class="form-outline mb-4">
                  <input type="text" name="email" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example3cg">이메일</label>
                </div>


              <!--   <div class="form-outline mb-4">
                  <input type="text" id="phoneNum" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example4cdg">핸드폰 번호</label>
                </div> -->
                           

                <div class="form-check d-flex justify-content-center mb-5">
                  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" />
                  <label class="form-check-label" for="form2Example3g">
                    모든 서비스 약관에 동의합니다. <a href="#!" class="text-body"><u>서비스 약관</u></a>
                  </label>
                </div>

                <div class="d-flex justify-content-center">
                  <button type="button" id="btn"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">가입하기</button>
                </div>

                <p class="text-center text-muted mt-5 mb-0">이미 가입하셨나요? <a href="#!"
                    class="fw-bold text-body"><u>로그인</u></a></p>

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

  <!-- detail end -->

  <!-- Footer Start -->
 <%@ include file = "./common/footer.jsp"%>
  <!-- Footer end -->
</html>