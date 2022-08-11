<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

</head>
<body>

<!-- 분야별 -->
<div class="col-lg-8">
	<div class="row g-5">
	
	<div class="col-lg-4 border-start custom-border">
	<strong>소설</strong>
	<c:forEach items="${alist}" var="book" varStatus="status">
	<c:if test="${book.book_category==1}">
			<div class="post-entry-1">	
				<a href="/book/allBooklist.do">
				<img src="../assets/img/${book.book_img}" alt="" class="img-fluid">
				<span class="date">${book.book_author}</span>
				<h5>${book.book_title}</h5></a>
			</div>
	</c:if> 
	</c:forEach>
	</div><!-- 소설 끝  -->


	<div class="col-lg-4 border-start custom-border">
    <strong>인문/사회</strong>
    <c:forEach items="${alist}" var="book" varStatus="status">
	<c:if test="${book.book_category==2}">
		<div class="post-entry-1">
		<a href="/book/allBooklist.do">
		<img src="../assets/img/${book.book_img }" alt="" class="img-fluid">
		<span class="date">${book.book_author}</span>
		<h5>${book.book_title}</h5></a>
	</div>
	</c:if>
	</c:forEach>
	</div><!-- 인문/사회 끝-->

	<!-- 베스트 셀러 -->
	<div class="col-lg-4">
		<p class="title">
			종합 주간 베스트셀러 <span style="color: red"> Top 5 </span></p>
		
		 <c:forEach items="${alist}" var="book" varStatus="status">
		 <div class="card" >
		<a href="/book/allBooklist.do">
		<img src="../assets/img/${book.book_img}" alt="" class="img-fluid">
		 <strong class="rank">${book.num}</strong>
				<div class="card-body" style="text-align: center">
					<c:if test="${book.book_category==1}">
						<small class="text-muted">[소설]</small>
					</c:if>
					
					<c:if test="${book.book_category==2}">
						<small class="text-muted">[인문/사회]</small>
					</c:if> 
    
					<h5 class="card-title">${book.book_title}</h5>
				</div>
			</a>
		</div> <!-- end card -->
		</c:forEach>

		</div> <!--	베스트셀러 "col-lg-4"의 끝 -->

		
		</div><!--row-g-5의 끝 -->
		</div><!--col-lg-8의 끝  -->
	
</body>
</html>