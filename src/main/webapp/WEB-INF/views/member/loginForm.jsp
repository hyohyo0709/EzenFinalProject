<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <link href="../assets/css/style.css" rel="stylesheet" />

    <title>로그인</title>
    <link
      rel="short icon"
      href="../assets/img/favicon.png"
      type="image/x-icon"
    />
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
	font-family: 'Varela Round', sans-serif;
}
.modal-login {		
	color: #636363;
	width: 350px;
}
.modal-login .modal-content {
	padding: 20px;
	border-radius: 5px;
	border: none;
}
.modal-login .modal-header {
	border-bottom: none;   
	position: relative;
	justify-content: center;
}
.modal-login h4 {
	text-align: center;
	font-size: 26px;
	margin: 30px 0 -15px;
}
.modal-login .form-control:focus {
	border-color: #70c5c0;
}
.modal-login .form-control, .modal-login .btn {
	min-height: 40px;
	border-radius: 3px; 
}
.modal-login .close {
	position: absolute;
	top: -5px;
	right: -5px;
}	
.modal-login .modal-footer {
	background: #ecf0f1;
	border-color: #dee4e7;
	text-align: center;
	justify-content: center;
	margin: 0 -20px -20px;
	border-radius: 5px;
	font-size: 13px;
}
.modal-login .modal-footer a {
	color: #999;
}		
.modal-login .avatar {
	position: absolute;
	margin: 0 auto;
	left: 0;
	right: 0;
	top: -70px;
	width: 95px;
	height: 95px;
	border-radius: 50%;
	z-index: 9;
	background: #60c7c1;
	padding: 15px;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
}
.modal-login .avatar img {
	width: 100%;
}
.modal-login.modal-dialog {
	margin-top: 80px;
}
.modal-login .btn, .modal-login .btn:active {
	color: #fff;
	border-radius: 4px;
	background: #60c7c1 !important;
	text-decoration: none;
	transition: all 0.4s;
	line-height: normal;
	border: none;
}
.modal-login .btn:hover, .modal-login .btn:focus {
	background: #45aba6 !important;
	outline: none;
}
.trigger-btn {
	display: inline-block;
	margin: 100px auto;
}
</style>

    <!-- 경고창띄우기 -->
    <c:choose>
	<c:when test="${result=='loginFailed' }">
	  <script type="text/javascript">
	    window.onload=function(){
	      alert("아이디나 비밀번호가 유효하지 않습니다.\n 다시 로그인하세요!");
	    }
	  </script>
	</c:when>
</c:choose>  

<script>
<!--로그인창 띄우자마자 모달 등장 -->
$(document).ready(function() {
     $("#myModal").modal("show");
     $(".close").click(function(){
         $("#myModal").modal("hide");
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
<!-- Modal HTML -->
<div id="myModal" class="modal fade">
	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<div class="modal-header">
				<div class="avatar">
					<img src="../assets/img/avatar.png" alt="Avatar">
				</div>				
				<h4 class="modal-title">Member Login</h4>	
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<form name="login" method="post"  action="/member/login.do">
					<div class="form-group">
						<input type="text" class="form-control" name="member_id" placeholder="ID" required="required">		
					</div>
					<div class="form-group">
						<input type="password" class="form-control" name="member_pass" placeholder="Password" required="required">	
					</div>        
					<div class="form-group">
						<button type="submit" class="btn btn-dark btn-lg btn-block login-btn" >Login</button>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<a href="/member/memberJoinForm.do">회원가입</a>
			</div>
		</div>
	</div>
</div>     
  
  <!-- detail end -->

  <!-- Footer Start -->
 <%@ include file = "../common/footer.jsp"%>
  <!-- Footer end -->
</html>