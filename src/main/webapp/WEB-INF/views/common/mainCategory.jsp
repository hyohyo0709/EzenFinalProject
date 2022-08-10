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
			종합 주간 베스트셀러 <span style="color: red"> Top 5 </span>
		</p>

		<div class="card" >
			<a href="/"> <img src="/assets/img/역행자.jpg"
				class="img-fluid" alt="역행자"> <strong
				class="rank">1</strong>
				<div class="card-body" style="text-align: center">
					<small>[자기계발]</small>
					<h5 class="card-title">역행자</h5>
					<small class="text-muted" style="text-align: center">
						"돈.시간.운명으로부터 완전한 자유를 얻는 7단계 인생 공략집" </small>
				</div>
			</a>
		</div>
		<div class="card-footer"></div>

		<div class="card">
			<a href="/"> <strong class="rank">2</strong> <img
				src="/assets/img/헤어질결심.jpg"
				class="img-fluid" alt="헤어질결심">
				<div class="card-body" style="text-align: center">
					<small>[영화]</small>
					<h5 class="card-title">헤어질결심</h5>
					<small class="text-muted" style="text-align: center">
						"2022 칸 영화제 감독상 수상작 〈헤어질 결심〉 오리지널 각본을 만나다" </small>
				</div>
			</a>
		</div>
		<div class="card-footer"></div>

		<div class="card">
			<a href="/"> <strong class="rank">3</strong> <img
				src="/assets/img/호감가는말투에는비밀이있다.jpg"
				class="img-fluid" alt="호감말투">
				<div class="card-body" style="text-align: center">
					<small>[자기계발]</small>
					<h5 class="card-title">
						호감 가는 말투에는</br>비밀이 있다
					</h5>
					<small class="text-muted" style="text-align: center">
						"오해는 줄이고 이해는 높이는 말하기를 배우다!" </small>
				</div>
			</a>
		</div>
		<div class="card-footer"></div>


		<div class="card">
			<a href="/"> <img
				src="/assets/img/7c98a7c9-77df-450f-84b9-d12529fc3b36_cd48274d-3136-495e-a52a-a1b7e3a5c17f_냉정과열정사이blue.jpg"
				class="img-fluid" alt="냉정과열정사이 "> <strong
				class="rank">4</strong>
				<div class="card-body" style="text-align: center">
					<small>[소설]</small>
					<h5 class="card-title">냉정과 열정사이</h5>
					<small class="text-muted" style="text-align: center">
						"선물하고 싶은 책" </small>
				</div>
			</a>
		</div>
		<div class="card-footer"></div>

		<div class="card">
			<a href="/"> <strong class="rank">5</strong> <img
				src="/assets/img/23621631-0971-46b8-bfa2-b649cc3294cf_test_up.jpg"
				class="img-fluid" alt="죄와벌">
				<div class="card-body" style="text-align: center">
					<small>[소설]</small>
					<h5 class="card-title">죄와벌</h5>
					<small class="text-muted" style="text-align: center">
						" 러시아의 대문호 도스토예프스키의 최고작 " </small>
				</div>
			</a>
		</div> 

		</div> <!--	베스트셀러 "col-lg-4"의 끝 -->

		
		</div><!--row-g-5의 끝 -->
		</div><!--col-lg-8의 끝  -->
	
</body>
</html>