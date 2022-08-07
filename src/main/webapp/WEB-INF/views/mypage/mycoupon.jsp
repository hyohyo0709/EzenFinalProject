<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>쿠폰조회</title>
	    <link
      rel="short icon"
      href="../assets/img/favicon.png"
      type="image/x-icon"
    />
	<link href="../assets/css/style.css" rel="stylesheet" />
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
	<script type="text/javascript">
/* 	function couponlist(){
		var list= document.create
	if 쿠폰 유형.equal:"1"
	숫자+ %
	
	else 쿠폰유형.equal"2"
	숫자+원
	}=> 리스트가 아니고 골라서 가져와야하므로 서비스부터 다시 설정 */
	</script>
    
</head>
<body>

     <!-- Header start -->
    <%@ include file = "../common/header.jsp"%>
    <!-- Header end -->

  <!-- mypage menu start -->
  <!--mypage menu를 왼쪽으로  -->
  <div class="container">
  <div class="row">
  <div class="col-2">
	<div class="list-group" id="quickmenu" align='left' > 
	  <input type="text" id="mymenu" readonly="readonly"  class="list-group-item list-group-item-action active list-group-item-secondary"
	    value="사용자 My Menu" />
	  
 		 <button id="member" onclick="location.href='http://localhost:8090/mypage/memberdetail.do?num=${member.num}'" class="list-group-item list-group-item-action">회원정보 수정</button>
 		 <button id="order" onclick="location.href='http://localhost:8090/mypage/myorderlist.do?member_number=${member.member_number}'" class="list-group-item list-group-item-action">주문확인 / 취소</button>
  		<button id="coupon" onclick="location.href='http://localhost:8090/mypage/mycoupon.do?member_number=${coupon.member_number}'" class="list-group-item list-group-item-action">쿠폰조회</button>

	</div> 
	</div>
	</div>
	</div>

 <!-- mypage menu end -->
 

 
 <!-- coupon detail end -->
 

  
</body>
  <!-- Footer Start -->
 <%@ include file = "../common/footer.jsp"%>
  <!-- Footer end -->
</html>