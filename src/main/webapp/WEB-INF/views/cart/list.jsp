<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	crossorigin="anonymous" />
<script defer
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>


<link href="../assets/css/style.css" rel="stylesheet" />

<title>장바구니</title>
<link rel="short icon" href="../assets/img/favicon.png"
	type="image/x-icon" />
</head>
<body>
	<!-- Header Start -->
	<!-- Nabar start -->

	<%@ include file="../common/header.jsp"%>
	<!-- Header end -->

	<!-- breadclumb start -->
	<section class="bread">
		<div class="container">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">게시판</li>
				</ol>
			</nav>
		</div>
	</section>
	<!-- breadclumb end -->
	<!-- head end -->
	<!-- ///////////장바구니 리스트 페이지 시작////////////////////////////// -->
	<!-- 다시 책 페이지로 돌아가기 위함 -->
	<c:url var="path" value="/book/book_detail.do">
		<c:param name="currentPage" value="${pv.currentPage }" />
		<c:param name="num" value="${dto.num }" />
	</c:url>
			<h4>장바구니</h4>
	<c:forEach items="${clist}" var="cdto">

		<div class="container">
			<div class="row">
				<div class="col-md-2" style="background-color: gray;">
				<img src="/assets/img/${cdto.book_img}" height="160px" width="100px" alt="${cdto.book_img } " style="margin: 10px auto 10px auto; display: flex; justify-content: space-between;">
				</div>
				<div class="col-md-7" style="background-color: gray;">
				
				<input type="button" value="삭제" style="float: right; margin-top: 10px;"/>
				<div style="margin-top: 10px;text-align: left;">
				<p style="font-size: 13px;">${cdto.book_title }</p>
				<p>${cdto.book_author }</p>
				<p>${cdto.book_publisher }</p>
				</div>
				</div>
			</div>
		</div>
		<div class="col-me-3">
		
		</div>
	</c:forEach>
			
			<button id="btnUpdate">수정</button>
			<button type="button" id="btnDelete">장바구니 비우기</button>
	<button type="button" id="btnList">상품목록</button>



	<!-- ///////////장바구니 리스트 페이지 끝////////////////////////////// -->
	<!-- Footer Start -->
	<%@ include file="../common/footer.jsp"%>
	<!-- Footer end -->
</body>
</html>