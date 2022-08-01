<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../assets/css/style.css" rel="stylesheet" />
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="../../common/mypage.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#update").click(function(){
			$("#frm").attr('action', '/mypage/update.do').submit();
		});
		
		$("#delete").click(function(){
			var result = confirm("정말로 탈퇴하시겠습니까?");
			if(result){
			$("#frm").attr('action', '/mypage/memberdelete.do').submit();
			}
		});


	});
</script>

<style>

   #frm{
   position:relative;
     bottom:110px;
    left:300px;
    width:70%;
    }

</style>

</head>
<body>

    <!-- Header start -->
    <%@ include file = "../../../common/header.jsp"%>
    <!-- Header end -->
   

  <!-- mypage menu start -->

	<%@ include file = "../../../common/mypagemenu.jsp"%>
  <!-- mypage menu end -->
  
  
  <!-- member detail start -->

<form class="row g-3" id="frm" method="post" name="frm">
  <div class="col-md-4">
    <label for="inputState" class="form-label">회원번호</label>
   <input type="text" class="form-control" readonly="readonly" name="member_number"value="${memberInfo.member_number}">
  </div>
   <div class="col-md-3">
    <label for="inputState" class="form-label">회원이름</label>
   <input type="text" class="form-control" readonly="readonly" name="member_name"value="${memberInfo.member_name}">
  </div>
  <div class="col-md-4">
    <label for="inputEmail4" class="form-label">아이디</label>
    <input type="text" class="form-control" name="member_id" readonly="readonly" value="${memberInfo.member_id}">
  </div>
  <div class="col-md-5">
    <label for="inputPassword4" class="form-label">비밀번호</label>
    <input type="password" class="form-control" name="member_pass" >
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">이메일</label>
    <input type="text" class="form-control" name="member_email" value="${memberInfo.member_email}">
  </div>
  <div class="col-12">
    <label for="inputAddress2" class="form-label">주소</label>
    <input type="text" class="form-control" name="member_address" value="${memberInfo.member_address}">
  </div>
  <div class="col-md-6">
    <label for="inputCity" class="form-label">전화번호</label>
    <input type="tel" class="form-control" name="member_phone"value="${memberInfo.member_phone}">
  </div>
  <div>
  <input type="hidden" name="num" value="${memberInfo.num}"/>
  <input type="button" id="update" class="btn btn-primary" value="수정" />
  <input type="button" id="delete" class="btn btn-primary" value="탈퇴" />
  </div>
</form>

  <!-- member detail end -->
  
   <!-- Footer Start -->
 <%@ include file = "../../../common/footer.jsp"%>
  <!-- Footer end -->
  
</body>
</html>