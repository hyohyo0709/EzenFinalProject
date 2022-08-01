<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
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

<title>모든 도서</title>
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
					<li class="breadcrumb-item"><a href="/">메인</a></li>
					<li class="breadcrumb-item active" aria-current="page">모든 도서</li>
				</ol>
			</nav>
		</div>
	</section>

	<!-- breadclumb end -->
	<!-- head end -->

	<!-- booklist start -->

	<section class="booklist">
		<div class="container-fulid ">

			<div class="row row-cols-1 row-cols-md-4 g-2">
				<c:forEach items="${alist}" var="book">

					<div class="col ">

						<div class="card mb-3 border-dark" style="max-width: 540px;">
							<div class="row g-0">
								<div class="col-md-3">
									<c:url var="detail_path" value="/book/book_detail.do">
										<c:param name="currentPage" value="${pv.currentPage }" />
										<c:param name="num" value="${book.num }" />
									</c:url>

									<a href="detail_path"><img
										src="../assets/img/${book.book_img }"
										class="img-fluid rounded-start" alt="..."></a>

								</div>
								<div class="col-md-9">
									<div class="card-body">
										<div class="d-flex justify-content-between align-items-center">
											<h5 class="card-title">${book.book_title}</h5>
											<h6 class="card-title text-end">${book.book_price}원</h6>


										</div>
										<p class="card-text">
										<div class="d-flex justify-content-between align-items-center">
											<div>

												<c:if test="${book.book_category==1}">
													<small class="text-muted">[소설]</small>
												</c:if>
												<c:if test="${book.book_category==2}">
													<small class="text-muted">[인문/사회]</small>
												</c:if>

												<small class="text-muted">${book.book_author}(저자)</small> <small
													class="text-muted "> |${book.book_publisher}| </small>

											</div>

										</div>
										</p>
										<div>



<!--////////////////////////////여기서부터  버튼류//////////////////////////  -->
											<c:choose>
												<c:when test="${book.book_stock==1}">
													<c:choose>
														<c:when test="${isLogOn == true  && member!= null}">
															<a
																href="${contextPath}/order/orderDetail.do?num=${book.num }"
																class="btn btn-warning"> 바로 구매 </a>
														</c:when>
														<c:otherwise>
														<a
																href="${contextPath}/member/loginForm.do"
																class="btn btn-warning"> 바로 구매 </a>
														</c:otherwise>
													</c:choose>

													<a href="path" class="btn btn-danger"> 장바구니 </a>

												</c:when>
												<c:otherwise>
													<button class="btn btn-warning" disabled>일시품절</button>
													<button class="btn btn-danger" disabled>일시품절</button>

												</c:otherwise>
											</c:choose>

<!--//////////////////////////////////////여기까지 버튼 류 /////////////////////////////////////////// -->
										</div>


									</div>



								</div>

							</div>
						</div>
					</div>




				</c:forEach>

			</div>



			<!-- pagination start-->

			<div class="row">
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center pagination-lg">
						<!-- 이전 시작 -->
						<li class="page-item"><c:if test="${pv.startPage>1}">
								<a class="page-link"
									href="/book/allBooklist.do?currentPage=${pv.startPage-pv.blockPage}"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a>
							</c:if></li>
						<!-- 이전 끝 -->

						<!-- 게시판 목록 이동 시작 -->
						<c:forEach var="i" begin="${pv.startPage }" end="${pv.endPage }">
							<c:url var="currPage" value="allBooklist.do">
								<c:param name="currentPage" value="${i}" />
							</c:url>



							<c:choose>
								<c:when test="${i==pv.currentPage }">
									<li class="page-item active"><span> <a
											href="${currPage }" class="page-link">${i}</a>

									</span></li>
								</c:when>

								<c:otherwise>

									<li class="page-item"><span> <a href="${currPage }"
											class="page-link">${i}</a>
									</span></li>

								</c:otherwise>
							</c:choose>


						</c:forEach>
						<!-- 게시판 목록 이동 끝 -->

						<!-- 다음 시작 -->
						<li class="page-item"><c:if test="${pv.endPage<pv.totalPage}">
								<a class="page-link"
									href="/book/allBooklist.do?currentPage=${pv.startPage+pv.blockPage}"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a>
							</c:if></li>
						<!-- 다음 끝 -->
					</ul>
				</nav>
			</div>
			<!-- pagination end -->
		</div>
	</section>
	<!-- board end -->

	<!-- Footer Start -->
	<%@ include file="../common/footer.jsp"%>
	<!-- Footer end -->
</html>