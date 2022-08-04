<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
	
<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" type="text/css" />
<title>장바구니</title>
<link rel="short icon" href="${pageContext.request.contextPath}/assets/img/favicon.png"
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
			<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;장바구니</h4>
				<div class="whtie_space">
				<div class="cart_div_container">
				<div class="row" id="product_bezel">
				<c:forEach items="${clist}" var="cdto">
				<div class="cart_img_area" style="background-color: #f5f5f5;">
				<img src="/assets/img/${cdto.book_img}" height="160px" width="100px" alt="${cdto.book_img } " style="margin: 10px auto 10px auto; display: flex; justify-content: space-between;">
				</div>
				<div class="cart_product_area">
				<table class="cart_area1" style="margin-top: 10%">
					<tbody>
						<tr>
							<th class="cart_title">${cdto.book_title}</th>
						</tr>
						<tr><td></td></tr>
						<tr class="cart_sub">
							<td>${cdto.book_publisher} | ${cdto.book_author }</td>
						</tr>
						<tr><td></td></tr>
						<tr>
							<td class="cart_sub">
							<c:if test="${cdto.book_category == 1}">소설/시/희곡</c:if>
							<c:if test="${cdto.book_category == 2}">에세이</c:if>
							<c:if test="${cdto.book_category == 3}">인문</c:if>
							<c:if test="${cdto.book_category == 4}">역사</c:if>
							<c:if test="${cdto.book_category == 5}">예술</c:if>
							<c:if test="${cdto.book_category == 6}">종교</c:if>
							<c:if test="${cdto.book_category == 7}">사회.정치</c:if>
							<c:if test="${cdto.book_category == 8}">자연과학</c:if>
							<c:if test="${cdto.book_category == 9}">경제 경영</c:if>
							<c:if test="${cdto.book_category == 10}">자기계발</c:if>
							<c:if test="${cdto.book_category == 11}">인물</c:if>
							<c:if test="${cdto.book_category == 12}">유아</c:if>
							<c:if test="${cdto.book_category == 13}">어린이</c:if>
							<c:if test="${cdto.book_category == 14}">청소년</c:if>
							<c:if test="${cdto.book_category == 15}">전집</c:if>
							<c:if test="${cdto.book_category == 16}">만화</c:if>
							<c:if test="${cdto.book_category == 17}">여행</c:if>
							<c:if test="${cdto.book_category == 18}">참고서</c:if>
							<c:if test="${cdto.book_category == 19}">잡지</c:if>
							<c:if test="${cdto.book_category == 20}">외국도서</c:if>
							</td>
						</tr>
					</tbody>
				</table>
				</div>
				<div class="cart_coupon">
					<div class="accordion accordion-flush" id="accordionFlushExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        후에 쿠폰 기능
      </button>
    </h2>
    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">개별 기능으로 뺄 예정</div>
    </div>
  </div>
</div>
				</div>
			<div class="cart_quantity">
					<table class="buy_area2" style="margin-top : 20% ">
						<tbody>
							<tr style="width: 80%">
								<td>
									<input class="cart_count_btn1" type="button" value="-" id="minus_btn">
								</td>
								<td>
									<input type="text" id="quantity_input" class="cart_count_total" value="1">					
								</td>
								<td>
									<input class="cart_count_btn2" type="button" value="+" id="plus_btn">
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<input type="text" class="cart_count_total_price" value="원"/>
								</td>
							</tr>
						</tbody>
					</table>
					
			</div>
	</c:forEach>
		</div>
		</div>
		<div class="row">
		<div class="cart_buy_area">
		<div class="cart_buy">
			<table class="cart_table">
			<tbody>
				<tr>
					<th style="font-size: 16px; color: black; vertical-align : top; ">배송지 확인</th>
				</tr>
				<tr>
					<td style="font-size: 11px; font-weight:lighter; color: gray; word-break: break-all; height=auto; vertical-align : top;" >${member.member_address }</td>
				</tr>
				<tr>
					<th><input class="cart_order" type="button" value="배송지 변경"></th>
				</tr>
			</tbody>
			</table>
			<table class="cart_table2">
			<tbody>
				<tr style="vertical-align : top;"height="15px;">
					<td style="text-align: left; font-size: 12px; ">전체 상품 : </td>
					<td style="text-align: right; font-size: 12px">3권</td>
				</tr>
				<tr style="vertical-align : top;"height="15px">
					<td style="text-align: left; font-size: 12px; ">주문 금액 : </td>
					<td style="text-align: right;font-size: 12px">41310원</td>
				</tr>
				<tr style="vertical-align : top;"height="15px">
					<td style="text-align: left; font-size: 12px; ">할인 금액 : </td>
					<td style="text-align: right;font-size: 12px">1343원</td>
				</tr>
				<tr>
					<th style="text-align: left; font-size: 12px; height:50px" >결제 예상 금액 : </th>
					<th style="text-align: right; font-size: 12px; vertical-align: middle;">40003원</th>
				</tr>
				<tr>
					<th colspan="2"><input class="cart_order" type="button" value="주문하기"></th>
				</tr>
			</tbody>
			</table>
		</div>
		<div class="dead_area">
		</div>
		</div>
		</div>
		</div>	
	
	<!-- ///////////장바구니 리스트 페이지 끝////////////////////////////// -->
	<!-- Footer Start -->
	<%@ include file="../common/footer.jsp"%>
	<!-- Footer end -->
	
</body>
	<script>
		//장바구니 스크립트//
	let quantity = $("#quantity_input").val();
	
	$("#plus_btn").on("click", function(){
		$("#quantity_input").val(++quantity);
	});
	$("#minus_btn").on("click", function(){
		if(quantity > 1){
			$("#quantity_input").val(--quantity);	
		}
	})
	</script>
</html>