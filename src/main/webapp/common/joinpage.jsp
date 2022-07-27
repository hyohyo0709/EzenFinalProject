<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입창</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
     <script>
      $(document).ready(function () {
         $('#submit').click(function () { 
          let id = $("#member_id").val();
          let password = $("#member_pass").val();
          let email = $("#member_email").val();
          let phone = $("#member_phone").val();
          let address = $("#member_address").val();          
         }); 
        

     }); 

      function checkID(id) {
        if (id == "") {
          alert("아이디를 입력하세요");
          return false;
        }
        if (id.match(/^[a-zA-Z0-9]{4,12}$/)) {
          return true;
        } else {
          alert("아이디는 4~12자리의 영문 대소문자와 숫자로만 입력하세요");
          return false;
        }
      }

      function checkPassword(password) {
        if (pw == "" ) {
          alert("비밀번호를 입력하세요");
          return false;
        }
      
        if (pw.match(/^[a-zA-Z0-9]{4,12}$/)) {
          return true;
        } else {
          alert(
            "비밀번호는 4~12자리의 영문 대소문자와 숫자로만 입력하세요"
          );
          return false;
        }
      }

      function checkEmail(email) {
        if (email == "") {
          alert("이메일을 입력하세요");
          return false;
        }
        if (
          email.match(
            /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i
          )
        ) {
          return true;
        } else {
          alert("이메일 형식에 맞게 입력하세요");
          return false;
        }
      }
      
      function checkPhone(phone) {
        
        if (phone == "") {
          alert("휴대폰 번호를 입력하세요");
          return false;
        }
        if (phone.match(/^[0-9]{10,11}$/)) {
          return true;
        } else {
          alert("휴대폰 번호를 확인해주세요");
          return false;
        }
      }
/*       console.log(`
				id:${member_id},
				password:${member_pass},
				phone:${member_phone},
				email:${member_email},
				address:${member_address}
				`); 
  }); */
 </script>
   
<!--    <style type="text/css">
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
    </style>  -->
    
 <style>
   .text_center{
     text-align:center;
   }
</style> 
</head>
<body>



<!--  <section>
<form method="post"   action="/member_join">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">회원가입</h2>
                    
                <div class="form-outline mb-4">
                  <input type="text" name="member_id" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example3cg">아이디</label>
                </div>
                
                <div class="form-outline mb-4">
                  <input type="password" name="member_pass" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example4cg">비밀번호</label>
                </div>

               <div class="form-outline mb-4">
                  <input type="text" id="member_phone" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example4cdg">휴대폰 번호</label>
                </div>                
                
                 <div class="form-outline mb-4">
                  <input type="text" name="member_address" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example4cdg">주소</label>
                </div>    
                                
                <div class="form-outline mb-4">
                  <input type="text" name="member_email" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example3cg">이메일</label>
                </div>
                           

                <div class="form-check d-flex justify-content-center mb-5">
                  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" />
                  <label class="form-check-label" for="form2Example3g">
                    모든 서비스 약관에 동의합니다. <a href="#!" class="text-body"><u>서비스 약관</u></a>
                  </label>
                </div>

                <div class="d-flex justify-content-center">
                  <button type="submit" id="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">가입하기</button>
                <td width="400"><input type="submit" value="가입하기"><input type="reset" value="다시입력"></td>
                </div>

                <p class="text-center text-muted mt-5 mb-0">이미 가입하셨나요? <a href="#!"
                    class="fw-bold text-body"><u>로그인</u></a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </form>
</section -->> 
	<form method="post"   action="/member_join">
	<h1  class="text_center">회원 가입창</h1>
	<table  align="center">
	   <tr>
	      <td width="200"><p align="right">아이디</td>
	      <td width="400"><input type="text" name="member_id"></td>
	   </tr>
	   <tr>
	      <td width="200"><p align="right">비밀번호</td>
	      <td width="400"><input type="password" name="member_pass"></td>
	    </tr>

	    <tr>
	       <td width="200"><p align="right">이메일</td>
	       <td width="400"><p><input type="text" name="member_email"></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">휴대폰 번호</td>
	       <td width="400"><p><input type="text" name="member_phone"></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">주소</td>
	       <td width="400"><p><input type="text" name="member_address"></td>
	    </tr>	    
	    <tr>
	       <td width="200"><p>&nbsp;</p></td>
	       <td width="400"><input type="submit" value="가입하기"><input type="reset" value="다시입력"></td>
	    </tr>
	</table>
	</form> 
</body>
