<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
<main id="main">
    <!-- 책 추천과 같은 이미지 사진 넣기 -->
   <!-- Banner Start-->
    <div class="container">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="margin-bottom: 50px">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>


            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="https://placeimg.com/1000/360/1" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="https://placeimg.com/1000/360/2" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="https://placeimg.com/1000/360/3" class="d-block w-100" alt="...">
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>        
    </div>   
  <!-- Banner End     -->


    <!-- ======= Post Grid Section ======= -->
    <section id="posts" class="posts">
      <div class="container" data-aos="fade-up">
      
      <!-- 편집장의 추천 or 이 주의 책 -->
        <div class="row g-5">
          <div class="col-lg-4">
            <div class="post-entry-1 lg">
              <a href="single-post.html"><img src="../assets/img/post-landscape-1.jpg" alt="" class="img-fluid"></a>
              <div class="post-meta"><span class="date">편집장의 추천</span> <span class="mx-1">&bullet;</span> <span>이 달의 픽</span></div>
              <h2><a href="single-post.html">벌거벗은 세계사:전쟁편</a></h2>
              
               <div class="d-flex align-items-center author">
                <div class="name">
                  <h3 class="m-1 p-2 d-block">이토록 재미있는 세계사라니!tvN 〈벌거벗은 세계사〉가 들려준 프레임 밖의 전쟁 이야기</h3>
                </div>
              </div>
              
              <p class="mb-4 d-block">tvn<벌거벗은세계사>제작팀 지음</p>

            </div>

          </div>


          <div class="col-lg-8">
            <div class="row g-5">
              <div class="col-lg-4 border-start custom-border">
                
 			<!--분야별 인기 책 or 신간 책, 광고 책 안내 or  -->          
                <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/post-landscape-2.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">Sport</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                  <h2><a href="single-post.html">Let’s Get Back to Work, New York</a></h2>
                </div>
               
			<!--분야별 인기 책 or 신간 책, 광고 책 안내 or  -->        
                <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/post-landscape-5.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">Food</span> <span class="mx-1">&bullet;</span> <span>Jul 17th '22</span></div>
                  <h2><a href="single-post.html">How to Avoid Distraction and Stay Focused During Video Calls?</a></h2>
                </div>
                
                <!--  -->
                <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/post-landscape-7.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">Design</span> <span class="mx-1">&bullet;</span> <span>Mar 15th '22</span></div>
                  <h2><a href="single-post.html">Why Craigslist Tampa Is One of The Most Interesting Places On the Web?</a></h2>
                </div>
              </div>
             
             <!--  -->
              <div class="col-lg-4 border-start custom-border">
                <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/post-landscape-3.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">Business</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                  <h2><a href="single-post.html">6 Easy Steps To Create Your Own Cute Merch For Instagram</a></h2>
                </div>
               
               <!--  -->
                <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/post-landscape-6.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">Tech</span> <span class="mx-1">&bullet;</span> <span>Mar 1st '22</span></div>
                  <h2><a href="single-post.html">10 Life-Changing Hacks Every Working Mom Should Know</a></h2>
                </div>
                
                <!--  -->
                <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/post-landscape-8.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">Travel</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                  <h2><a href="single-post.html">5 Great Startup Tips for Female Founders</a></h2>
                </div>
              </div>

              <!-- Trending Section -->
              <!-- 베스트 셀러 순위 -->
              <div class="col-lg-4">

                <div class="trending">
                  <h3>Trending</h3>
                  <ul class="trending-post">
                    <li>
                      <a href="single-post.html">
                        <span class="number">1</span>
                       <h3>The Best Homemade Masks for Face (keep the Pimples Away)</h3>
                        <span class="author">Jane Cooper</span>
                      </a>
                    </li>
                    <li>
                      <a href="single-post.html">
                        <span class="number">2</span>
                        <h3>17 Pictures of Medium Length Hair in Layers That Will Inspire Your New Haircut</h3>
                        <span class="author">Wade Warren</span>
                      </a>
                    </li>
                    <li>
                      <a href="single-post.html">
                        <span class="number">3</span>
                        <h3>13 Amazing Poems from Shel Silverstein with Valuable Life Lessons</h3>
                        <span class="author">Esther Howard</span>
                      </a>
                    </li>
                    <li>
                      <a href="single-post.html">
                        <h3>9 Half-up/half-down Hairstyles for Long and Medium Hair</h3>
                        <span class="author">Cameron Williamson</span>
                      </a>
                    </li>
                    <li>
                      <a href="single-post.html">
                        <span class="number">5</span>
                        <h3>Life Insurance And Pregnancy: A Working Mom’s Guide</h3>
                        <span class="author">Jenny Wilson</span>
                      </a>
                    </li>
                  </ul>
                </div>

              </div> <!-- End Trending Section -->
            </div>
          </div>
</main>
    
</body>
</html>