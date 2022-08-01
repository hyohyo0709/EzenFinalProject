<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
   <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />


    <link href="../../../assets/css/style.css" rel="stylesheet" />
<script type="text/javascript">

function btnWrite() {

	  frm.target = "_self";
	 
	  frm.action = "/board/write.do";


	  frm.submit();

	}

</script>      
<style type="text/css">
#bodywrap{
  width:80%;
  margin:10px auto;
}

table,tr,th,td{
	border:1px solid black;
	border-collapse: collapse;	
}

.pagelist a{
	color:black;
	bottom:40px;
}

.pagelist a:hover, .pagelist .pagecolor{
	text-decoration: underline;
	color:red;
}
#frm{
	padding-left: 1000px;
}

a {
  text-decoration: none;
  color: white;
}
</style>
</head>
<body>
	<!-- Header start -->
	
    <%@ include file = "../../../common/header.jsp"%>
    <!-- Header end -->
    
<div id="bodywrap">
	<table class='table table-dark table-striped'>
	<tr>
	<th width="5%">번호</th>
	<th width="45%">제목</th>
	<th width="20%">아이디</th>
	<th width="5%">조회수</th>
	</tr>
	<c:forEach items="${aList}" var="dto">
	<tr>
	<td>${dto.num}</td>
	<td>
	<c:url var="path" value="view.do">
		<c:param name="currentPage" value="${pv.currentPage}" />
		<c:param name="num" value="${dto.num}" />
	</c:url>
	<c:if test="${dto.re_level > 0 }">
	<img src="../assets/img/level.gif" width="${20*dto.re_level }" height="15" style="opacity: 0"/>
	<img src="../assets/img/answer.png" height="15" />
	</c:if>
	<a href="/board/${path}">${dto.subject}</a>
	</td>
	<td>${dto.member_id}</td>
	<td>${dto.readcount}</td>
	</tr>
	</c:forEach>
	</table>
	<!-- 글쓰기 -->
	<form id="frm" method="get" action="write.do">
	<input type="button"  onclick="btnWrite()" class="btn btn-secondary" value="글쓰기">
	</form>
	<div class="pagelist">
	<!-- 이전 출력 시작 -->
	<ul class="pagination">
	<c:if test="${pv.startPage>1}">
	<li class="page-item"><a class="page-link" href="list.do?currentPage=${pv.startPage-pv.blockPage}">Previous</a></li>
	</c:if>

	<!-- 이전 출력 시작 -->
	
	 <!-- 페이지 출력 시작 --> 	 
	 <c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
	 	 <c:url var="currPage" value="list.do">
	 	<c:param name="currentPage" value="${i}"/>
	 </c:url>
	 <c:choose>
	 	<c:when test="${i==pv.currentPage}">
	 	<li class="page-item active"><a class="page-link" href="${currPage}">${i}</a></li>
	 	</c:when>
	 	<c:otherwise>
	 	<li class="page-item"><a class="page-link" href="${currPage}">${i}</a></li>
	 	</c:otherwise>
	 </c:choose>
		 </c:forEach>
	 <c:if test="${pv.endPage<pv.totalPage}">
	<li class="page-item"><a class="page-link" href="list.do?currentPage=${pv.startPage+pv.blockPage}">Next</a></li>
	</c:if>
	
	 


	 </ul>
	</div>

</div>

    <!-- Footer Start -->
 <%@ include file = "../../../common/footer.jsp"%>
  <!-- Footer end -->
</body>
</html>