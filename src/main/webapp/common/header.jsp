<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
  <div class="container">
    <a class="navbar-brand" href="/index.jsp">배너 들어 갈 자리</a>

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
            <li><a class="dropdown-item" href="board.jsp">모든 도서</a></li>
            <li><hr class="dropdown-divider" /></li>
            <li><a class="dropdown-item" href="#">소설</a></li>
            <li><a class="dropdown-item" href="#">인문/역사</a></li>
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
            <li><a class="dropdown-item" href="/login.jsp">로그인</a></li>
            <li><a class="dropdown-item" href="/member_join.jsp">회원 가입</a></li>
            <li><a class="dropdown-item" href="/mypage.jsp">My Page</a></li>
            <li><a class="dropdown-item" href="/board/list.do">게시판</a></li>
            <li><hr class="dropdown-divider" /></li>
            <li>
              <a class="dropdown-item" href="#">Something else here</a>
            </li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">환영합니다</a>
        </li>
      </ul>
      <form class="d-flex">
        <input
          class="form-control me-2"
          type="search"
          placeholder="도서 검색"
          aria-label="Search"
        />
        <button
          class="btn btn-outline-success btn-lg"
          type="submit"
          style="color: white; border-color: white;"
        >search</button>
      </form>
    </div>
  </div>
</nav>
<br />
