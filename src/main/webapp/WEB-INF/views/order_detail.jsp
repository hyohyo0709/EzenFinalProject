<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

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

    <link href="./assets/css/style.css" rel="stylesheet" />
    <title>Document</title>

    <!-- 파비콘 -->
    <link
      rel="short icon"
      href="./assets/img/favicon.png"
      type="image/x-icon"
    />
    
      <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>Checkout example · Bootstrap v5.0</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/">

    

    <!-- Bootstrap core CSS -->
<link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

    </style>

    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
    <script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

      <script src="form-validation.js"></script>
 
<!--   결제버튼 누르면 페이지 이동  -->
  <script>
  $("#orderButton").click(function(){
		 $("#frm").attr("action","/orderList.do?currentPage=1&num={dto.num}").submit();
		 
	 });
  </script>
  
  </head>
  <body>
    <!-- Header Start -->
    <!-- Nabar start -->

    <%@ include file = "./common/header.jsp"%>
    <!-- Header end -->

    <!-- card start -->

    <!-- card end -->

    <!-- body start -->
    
    
     <body class="bg-light">
   <form name="frm" id="frm" method="post" enctype="multipart/form-data">

<div class="container">
  <main>
    <div class="py-5 text-center">
   <!--    <img class="d-block mx-auto mb-4" src="/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57"> -->
      <h2>주문서</h2>
     <!--  <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p> -->
    </div>
    

    <div class="row g-5">
      <div class="col-md-5 col-lg-4 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-primary">Your cart</span>
          <span class="badge bg-primary rounded-pill" name="order_qty">1</span>
        </h4>
        <ul class="list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">상품명 </h6>
              <small class="text-muted" name="book_title">${bdto.book_title}</small>
            </div>
            <span class="text-muted" name="book_price">${bdto.book_price}원</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0"><p>상품 이미지</p></h6>
              
              <div class="text-muted" id="img-responsive" name ="book_img">
              <img src="/assets/img/${bdto.book_img}" height="300px" width="100%" class="img-responsive img-thumbnail" alt="${bdto.book_img}">
			</div>
            </div>
            
            <span class="text-muted"></span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">배송비</h6>
              <small class="text-muted"></small>
            </div>
            <span class="text-muted">2500원</span>
          </li>
          <li class="list-group-item d-flex justify-content-between bg-light">
            <div class="text-success">
              <h6 class="my-0">할인 쿠폰 </h6>
              <small>첫구매할인 </small>
            </div>
            <span class="text-success">−1000원</span>
          </li>
          <li class="list-group-item d-flex justify-content-between">
            <span>결제금액</span>
            <strong>$20</strong>
          </li>
        </ul>

<!--         <form class="card p-2">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Promo code">
            <button type="submit" class="btn btn-secondary">Redeem</button>
          </div>
        </form> -->
        
      </div>

      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">배송지 정보 입력 </h4>
        
        <div class="col-5">
              <label for="id" class="form-label">아이디 <span class="text-muted"></span></label>
              <input type="id" class="form-control" id="member_id" name="member_id" placeholder="${mdto.member_id}">
              <div class="invalid-feedback">
               
              </div>
            </div>
        
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="firstName" class="form-label">이름</label>
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
              <div class="invalid-feedback">
               이름을 입력해주세요 
              </div>
            </div>

            <div class="col-12">
              <label for="email" class="form-label" >이메일 <span class="text-muted"></span></label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                배송정보를 위해 이메일을 입력해주세요 
              </div>
            </div>
            
            <div class="col-md-5">
              <label for="country" class="form-label">지역 </label>
              <select class="form-select" id="country" required>
                <option value="">선택해주세요</option>
                <option>서울특별시</option>
                <option>경기도</option>
              </select>
              <div class="invalid-feedback">
               지역을 입력해주세요 
              </div>
            </div>
            

            <div class="col-md-4">
              <label for="state" class="form-label">구</label>
              <select class="form-select" id="state" required>
                <option value="">선택해주세요</option>
                <option>강남구</option>
              </select>
              <div class="invalid-feedback">
                 지역을 입력해주세요 
              </div>
            </div>

             <div class="col-md-3">
              <label for="state" class="form-label">동</label>
              <select class="form-select" id="state" required>
                <option value="">선택해주세요</option>
                <option>역삼동</option>
              </select>
              <div class="invalid-feedback">
                 지역을 입력해주세요 
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label" >상세주소</label>
              <input type="text" class="form-control" id="address" placeholder="1234-1 행복하우스 101호 " required>
              <div class="invalid-feedback">
               상세주소를 입력해주세요 
              </div>
            </div>


          </div>

          <hr class="my-4">

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="same-address">
            <label class="form-check-label" for="same-address">배송지 정보와 주문자 정보가 일치합니다 </label>
          </div>

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info"> 배송지 정보를 저장합니다 </label>
          </div>

          <hr class="my-4">

          <h4 class="mb-3">결제</h4>

          <div class="my-3">
            <div class="form-check">
              <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
              <label class="form-check-label" for="credit">신용카드</label>
            </div>
            <div class="form-check">
              <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="debit">무통장입금</label>
            </div>
        
		<br>
          <div class="row gy-3">
            <div class="col-md-6">
              <label for="cc-name" class="form-label">카드 이름 </label>
              <input type="text" class="form-control" id="cc-name" placeholder="" required>
              <small class="text-muted">예)우리카드, 신한카드 ,카카오뱅크  </small>
              <div class="invalid-feedback">
                카드 정보를 입력해주세요 
              </div>
            </div>

            <div class="col-md-6">
              <label for="cc-number" class="form-label">카드 번호 </label>
              <input type="text" class="form-control" id="cc-number" placeholder="" required>
              <div class="invalid-feedback">
               카드번호를 입력해주세요 
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">Expiration</label>
              <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
              <div class="invalid-feedback">
                Expiration date required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">CVV</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
              <div class="invalid-feedback">
                Security code required
              </div>
            </div>
          </div>

          <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg" id = "orderButton">
          주문하기</button>
        </form>
      </div>
    </div>
  </main>

</div>


    <!-- body end -->

    <!-- Footer Start -->
    <%@ include file = "./common/footer.jsp"%>
    <!-- Footer end -->
    </form>
  </body>
</html>
