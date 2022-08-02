<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    

    <link href="../assets/css/style.css" rel="stylesheet" />

    <title>장바구니</title>
    <link
      rel="short icon"
      href="../assets/img/favicon.png"
      type="image/x-icon"
    />
  </head>
  <body>
     <!-- Header Start -->
    <!-- Nabar start -->

    <%@ include file = "../common/header.jsp"%>
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
	<c:param name="currentPage" value="${pv.currentPage }"/>
	<c:param name="num" value="${dto.num }"/>
	</c:url>

  <h2>장바구니</h2>
<c:choose>
    <c:when test="${cart.count == 0 }">
        장바구니가 비었습니다.
    </c:when>
    
    <c:otherwise>
    <!-- cart.count가 0이 아닐때, 즉 자료가 있을때 -->
    <!-- form을 실행한다.  -->
    <!-- form의 id를 form1로 하고, method 방식을 post로 한다. 그리고 update.do페이지로 이동시킨다. -->
            <table style="border: 1px solid;">
            <tbody>
                <tr>
                    <th>상품명</th>
                    <th>단가</th>
                    <th>수량</th>
                    <th>금액</th>
                    <th>&nbsp;</th>
                </tr>
                <!-- map에 있는 list출력하기 위해 forEach문을 사용해 row라는 변수에 넣는다. -->
                <tr align="center">
                    <td>${cart.book_title}</td>
                    
                    <td><fmt:formatNumber value="${cart.book_price}"
                            pattern="#,###,###" /></td>
                            <!-- fmt:formatNumber 태그는 숫자를 양식에 맞춰서 문자열로 변환해주는 태그이다 -->
                            <!-- 여기서는 금액을 표현할 때 사용 -->
                            <!-- ex) 5,000 / 10,000 등등등-->
                            
                    <td><input type="number" name="amount" 
                        style="width:30px;"
                        value="<fmt:formatNumber value="${cart.cart_amount}"
                            pattern="#,###,###" />">
                    <!-- 물건의 개수 (amount)를 fmt태그를 사용해서 패턴의 형식에 맞춰서 문자열로 변환함 -->
                    <!--1,000 / 5,000 등등~  -->
                    
                            <input type="hidden" name="cart_id"
                            value="${cart.cart_id}">
                    </td>
                    <td><fmt:formatNumber value="${cart.money}"
                            pattern="#,###,###" /></td>
                    <td><%-- <a href=
				"${path}/cart/delete.do?cart_id=${row.cart_id}"> [삭제]</a>--%>
<!-- 삭제 버튼을 누르면 delete.do로 장바구니 개별 id (삭제하길원하는 장바구니 id)를 보내서 삭제한다. -->
                    </td>
                </tr>
               <%--  <tr>
                    <td colspan="5" align="right">
                        장바구니 금액 합계 :
                        <fmt:formatNumber value="${cart.sumMoney}"
                            pattern="#,###,###" /><br>
                        총합계 : <fmt:formatNumber value="${map.sum}"
                            pattern="#,###,###" />
                    </td>
                </tr> --%>
                </tbody>
            </table>
            <button id="btnUpdate">수정</button>
            <button type="button" id="btnDelete">장바구니 비우기</button>
    </c:otherwise>
</c:choose>
<button type="button" id="btnList">상품목록</button>
  
  
  
  <!-- ///////////장바구니 리스트 페이지 끝////////////////////////////// -->
	<!-- Footer Start -->
	<%@ include file="../common/footer.jsp"%>
	<!-- Footer end -->
</body>
</html>