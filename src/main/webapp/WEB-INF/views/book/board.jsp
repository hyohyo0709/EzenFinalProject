<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <title>게시판</title>
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

  <!-- board start -->

  <section class="board">
    <div class="container">
      <div class="row">
      <!--/////////////// 카테고리 선택창 시작/////////////// -->
      <div class="col-md-2">
      <div class="accordion-item" id="category_box" >
    <h2 class="accordion-header" id="flush-headingOne">
      <button id="accordion-btn" class="accordion-button collapsed " type="button"
       data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
        aria-expanded="false" aria-controls="flush-collapseOne">
       카테고리
      </button>
    </h2>
    <div id="flush-collapseOne"
     class="accordion-collapse collapse" 
     aria-labelledby="flush-headingOne"
      data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
  <a href="#" class="category_btn">소설</a></br>
  <a href="#" class="category_btn">인문학</a></br>
  <a href="#" class="category_btn">경영</a></br>
	</div>
    </div>
  </div>
      </div>
      <!--/////////////// 카테고리 선택창 끝/////////////// -->
        <!-- table start -->
        <div class="col-md-10">
        <table class="table table-dark table-striped">
          <thead>
            <tr>
              <th scope="col">번호</th>
              <th scope="col">제목</th>
              <th scope="col">작성자</th>
              <th scope="col">조회수</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${alist}" var="dto">
				<tr >
					<th scope="row">${dto.num}</th>
					<td>
					<c:url var="path" value="/book/book_detail.do">
					<c:param name="currentPage" value="${pv.currentPage }"/>
					<c:param name="num" value="${dto.num }"/>
					</c:url>
					<a href="${path }" style="color: white">${dto.book_title}</a>
					</td>
					<td>${dto.book_author}</td>
					<td>${dto.book_publisher}</td>
				</tr>
			</c:forEach> 
          </tbody>
        </table>
        <!-- tabel end -->
      </div>
      <!-- pagination start-->
      </div>
      
   <div class="row">
       <nav aria-label="Page navigation example">
          <ul class="pagination justify-content-center">
      <!-- 이전 시작 -->      
            <li class="page-item">
            <c:if test="${pv.startPage>1}">
              	<a class="page-link" href="/book/board.do?currentPage=${pv.startPage-pv.blockPage}" aria-label="Previous">
               		 <span aria-hidden="true">&laquo;</span>
              	</a>
              </c:if>
            </li>
	  <!-- 이전 끝 -->
            
      <!-- 게시판 목록 이동 시작 -->
           	 <c:forEach var="i" begin="${pv.startPage }" end="${pv.endPage }">
            <li class="page-item">
           	 	<span>
           	 	<c:url var="currPage" value="board.do">
					<c:param name="currentPage" value="${i}"/>
		 		</c:url>
		 	<c:choose>
					<c:when test="${i==pv.currentPage }">
						<a href="${currPage }"class="page-link">${i}</a>
					</c:when>
				
					<c:otherwise>
						<a href="${currPage }" class="page-link">${i}</a>
					</c:otherwise>
			</c:choose>
			
			</span>
            </li>
		 	</c:forEach>
	   <!-- 게시판 목록 이동 끝 -->            
           
	   <!-- 다음 시작 -->           
            <li class="page-item">
            	<c:if test="${pv.endPage<pv.totalPage}">
             		<a class="page-link" href="/book/board.do?currentPage=${pv.startPage+pv.blockPage}" aria-label="Next">
                		<span aria-hidden="true">&raquo;</span>
              		</a>
              </c:if>
            </li>
         <!-- 다음 끝 -->          
          </ul>
        </nav>
      </div>
      <!-- pagination end -->
    </div>
  </section>
  <!-- board end -->

  <!-- Footer Start -->
  <%@ include file = "../common/footer.jsp"%>
  <!-- Footer end -->
</html>
