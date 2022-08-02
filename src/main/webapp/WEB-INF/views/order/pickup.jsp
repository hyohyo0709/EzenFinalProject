<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<title>${dto.book_title }</title>
<link rel="short icon" href="../assets/img/favicon.png"
	type="image/x-icon" />
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<!-- navbar end -->


	<!-- breadclumb start -->
	<section class="bread">
		<div class="container">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.do">Home</a></li>
					<li class="breadcrumb-item"><a href="board.do">도서 목록</a></li>
					<li class="breadcrumb-item active" aria-current="page">도서 상세
						보기</li>
				</ol>
			</nav>
		</div>
	</section>
	<!-- breadclumb end -->
	<!-- head end -->

	<!-- order-page start -->
	<h1>샘플 주문 페이지입니다
	${dto.num}</h1>
	<div>${dto.num}</div>
	<!-- 추가 도서 목록 (후에 이미지로 대체) 끝-->
	

	<!-- Footer Start -->
	
	
	<%@ include file="../common/footer.jsp"%>
	<!-- Footer end -->
</html>
