<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
  <div class="container">
    <a class="navbar-brand" href="/">배너 들어 갈 자리</a>
    <button
      class="navbar-toggler"
      type="button"
      data-bs-toggle="collapse"
      data-bs-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#"
            id="navbarDropdown"
            role="button"
            data-bs-toggle="dropdown"
            aria-expanded="false"
            >분야별 도서</a
          >
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="/book/allBooklist.do">모든 도서</a></li>
            <li><hr class="dropdown-divider" /></li>
            <li><a class="dropdown-item" href="/book/novelCategorylist.do?book_category=1">소설</a></li>
            <li><a class="dropdown-item" href="/book/humansocietyCategorylist.do?book_category=2">인문/사회</a></li>
            <li><hr class="dropdown-divider" /></li>
            <li>
              <a class="dropdown-item" href="#">Something else here</a>
            </li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">신작 도서</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">추천 도서</a>
        </li>
        <li class="nav-item dropdown">
          <a
            class="nav-link dropdown-toggle"
            href="#"
            id="navbarDropdown"
            role="button"
            data-bs-toggle="dropdown"
            aria-expanded="false"
          >
            회원 메뉴
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <!-- <li><a class="dropdown-item" href="member/loginForm.do">로그인</a></li> -->
         
         
            <c:choose>
          <c:when test="${isLogOn == true  && member!= null}">
            <li><a class="dropdown-item" href="${contextPath}/member/logout.do">로그아웃</a></li>
             <li><a class="dropdown-item" href="${contextPath}/mypage/mypageForm.do">My Page</a></li>
          </c:when>
          <c:otherwise>
	       <li><a class="dropdown-item" href="${contextPath}/member/loginForm.do">로그인</a></li>
	        <li><a class="dropdown-item" href="${contextPath}/member/memberJoinForm.do">회원 가입</a></li>
	       
	      </c:otherwise>
	   </c:choose>  
	   
           
           
            <li><hr class="dropdown-divider" /></li>
            <li>
              <a class="dropdown-item" href="#">Something else here</a>
            </li>
          </ul>
        </li>
        <li class="nav-item">
        <c:choose>
        <c:when test="${isLogOn == true  && member!= null}">
          <a class="nav-link disabled">${member.member_name }님 환영합니다</a>
          </c:when>
          <c:otherwise>
          <a class="nav-link disabled"> 환영합니다</a>
           </c:otherwise>
          </c:choose>
        </li>
      </ul>
      
        <c:choose>
          <c:when test="${isLogOn == true  && member!= null}">
      <c:choose>
      <c:when test="${member.member_type==1 }">
      <a href="http://localhost:3000">
      <button
          class="btn btn-outline-success btn-lg me-2"
          type="submit"
          style="color: yellow; border-color: yellow;"
        >관리자 페이지</button>
      </a>
      </c:when>
      
      </c:choose>
      
       </c:when>
       </c:choose> 
        
        
        
        
         <script type="text/javascript">
      function checkForm(){
    	  
    	  var pattern=/\s/g;
    	  
    	  if(document.searchForm.searchWord.value.length==0 || document.searchForm.searchWord.value.match(pattern)){
    		  alert("검색어를 입력하세요.")
    		  return false;
    	  }
    	  return true;
      }
      
      </script> 
      <form class="d-flex" name="searchForm" action="/book/searchlist.do" onsubmit="return checkForm()" >
      
        <input
          class="form-control me-2"
          type="search"
          placeholder="도서 검색"
          aria-label="Search"
          name="searchWord"
        />
        <a >
         <button
          class="btn btn-outline-success btn-lg"
          type="submit"
          style="color: white; border-color: white;"
        >search</button>
        </a>
       
      
      </form>
      
    </div>
  </div>
</nav>
<br />
