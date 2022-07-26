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
<script type="text/javascript">
	function noStock(){
		alert('재고가 없습니다.')
	};
</script>
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

	<!-- detail start -->
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="card" id="card_img">
					<img src="../assets/img/${dto.book_img}"
						class="card-img-top" alt="${dto.book_img }">
				</div>
			</div>
			<div class="col-md-6" id="detail_main">
				<p class="book_title">${dto.book_title} </p>
				<p class="book_sub" style="border-bottom: 1px solid black;">저자 :
					${dto.book_author } | ${dto.book_publisher} |
				<c:if test="${dto.book_category == 1}">경영</c:if>
				<c:if test="${dto.book_category == 2}">동화</c:if>
				<c:if test="${dto.book_category == 3}">소설</c:if>
				<c:if test="${dto.book_category == 4}">참고서</c:if>
				<c:if test="${dto.book_category == 5}">역사</c:if>
					</p>
				<table style="border-bottom: 1px solid black;" >
					<colgroup>
						<col width="150">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th class="list_price1">정가</th>
							<td class="list_price2">${dto.book_price}원</td>
						</tr>
						<tr style="border-bottom: 1px solid black;">
							<th class="sell_price1">판매가</th>
							<th class="sell_price2">
							<!-- 소수점제거 -->
							<fmt:parseNumber var="sellprice" value="${dto.book_price / 10 *9}" integerOnly="true"/>
							${sellprice }원
							</th>
						</tr>
						<tr>
						<th><p style="margin-top: 10px">줄거리</p></th>
						</tr>
						<tr>
							<td width="100%" colspan="2" class="book_story">${dto.book_content }</td>
						</tr>
					</tbody>
				</table>
			</div>
				<!--////////// 구매관련 ///////////// -->

				<!-- // ////// 재고 및 배송 시작 /////////  -->

				<div class="col-md-3">
				<div class="buy_box" >
					<p style="margin-top: 10px; color: gray; 
					font-size: 13px; text-align: center;">
					<c:choose>
					<c:when test="${dto.book_stock}==1">구매가능</c:when>
					<c:otherwise>재고없음</c:otherwise>
					</c:choose>
					</p>
					<div class="buy_area1">
					<div style=" border-bottom : 1px solid gray; margin-bottom: 5px">
					<span style="color: gray;">배송비 :</span>
						  <span style= "color: blue">무료</span></br></br>
					<span>배송일정 : 서울시 서초구 서초동 기준</span></bar>
					<p style="color: red;">
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					다음날 출고 예정</p>
					<span>매장에서 받기 원하신다면 </span></br>
					<span style="color: blue;">서울시 서초구 서초동에서 수령하세요</span>
					<p></p>
					 </div>
					</div>
					
				<!-- // ////// 재고 및 배송 시작 /////////  -->
				
					<!-- //////수량 선택 /////////-->
					<table class="buy_area2">
						<tbody>
							<tr>
								<th>수량 선택&nbsp&nbsp</th>
								<td>
									<input class="count_btn1" type="button" value="-" onclick=''>
								</td>
								<td>
									<input class="count_total" type="text" value="1" maxlength="4"> 							
								</td>
								<td>
									<input class="count_btn2" type="button" value="+" onclick=''>
								</td>
								</tr>
								<tr>
								<th>
								구매 가격
								</th>
								<td colspan="3">
									<p class="count_total_price">${sellprice }원</p>
								</td>
								
							</tr>
						</tbody>
					</table>
					<!-- //////// 수량 끝 //////// -->
					
					
					<!-- ////// 구매 버튼 목록 시작 /////// -->
					<!-- 재고 유무에 따라 재고가 없을시에 알림창 -->
					<div style="margin-top: 15px;">
					<c:choose><c:when test="${dto.book_stock}==1">
					<input class="buy_button1" type="button" value="장바구니">
					<input class="buy_button1" type="button" value="선물하기">
					<input class="buy_button2" type="button" value="매장구매">
					<input class="buy_button2" type="button" value="바로구매">
					</c:when>
					<c:otherwise>
					<input class="buy_button1" type="button" value="장바구니" onclick="noStock()">
					<input class="buy_button1" type="button" value="선물하기" onclick="noStock()" >
					<input class="buy_button2" type="button" value="매장구매" onclick="noStock()">
					<input class="buy_button2" type="button" value="바로구매" onclick="noStock()">
					</c:otherwise>
					</c:choose>
					</div>
					<!-- ////// 구매 버튼 목록 끝 /////// -->
				</div>
			</div>
			
					<!-- /////////// 구매 관련 끝 /////////////////// -->
		</div>
	</div>
	<div class="container">
	<div class="row">
	<div class="col-md-3">
	</div>
	<div class="col-md-6" id="new_books">
	<span style="font-size: 35px">다른 매력적인 책들을 만나보세요</span>	
	</div>
	<div class="col-md-3">
	</div>
	</div>
	</div>
	<!-- detail end -->
	<!-- 추가 도서 목록 (후에 이미지로 대체) 시작 -->
	<div class="row" id="row_area">
	<div class="slider">
<div class="image-box">
<div id="random_book_img">
      <img src="https://placeimg.com/140/210/any" />
  	</div>
<div id="random_book_img">
      <img src="https://placeimg.com/140/210/any" />
  	</div>
<div id="random_book_img">
      <img src="https://placeimg.com/140/210/any" />
  	</div>
<div id="random_book_img">
      <img src="https://placeimg.com/140/210/any" />
  	</div>
  	<div id="random_book_img">
      <img src="https://placeimg.com/140/210/any" />
  	</div>
  	<div id="random_book_img">
      <img src="https://placeimg.com/140/210/any" />
  	</div>
  	<div id="random_book_img">
      <img src="https://placeimg.com/140/210/any" />
  	</div>
  	<div id="random_book_img">
      <img src="https://placeimg.com/140/210/any" />
  	</div>
  	<div id="random_book_img">
      <img src="https://placeimg.com/140/210/any" />
  	</div>
  	</div>	
   </div>
</div>
	<!-- 추가 도서 목록 (후에 이미지로 대체) 끝-->
	

	<!-- Footer Start -->
	
	
	<%@ include file="../common/footer.jsp"%>
	<!-- Footer end -->
</html>
