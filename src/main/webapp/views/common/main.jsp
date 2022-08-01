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
 <!-- 이달의 추천 편집장의 선택  -->
    <section id="posts" class="posts">
      <div class="container" data-aos="fade-up">
        <div class="row g-5">
          <div class="col-lg-4">
            <div class="post-entry-1 lg">
              <a href="single-post.html"><img src="../../assets/img/recommended-book1.jpg" alt="" class="img-fluid"></a>
              <div class="post-meta"><span class="date">이 달의 MD 추천</span> <span class="mx-1">&bullet;</span> <span>2022.08</span></div>
              <h4><a href="single-post.html">매일을 헤엄치는 법 </a></h4>
              <p class="mb-4 d-block">
              80여만 구독자에게 주체적인 삶의 태도와 자세를 전해온 독보적인 미술 크리에이터 이연의 그림 에세이 《매일을 헤엄치는 법》이 도서출판 푸른숲에서 출간되었다. 
              2018년, 제 삶을 되찾기 위해 퇴사를 감행한 스물일곱 살 이연의 자전적인 이야기로, 이연의 오리지널 캐릭터로 그려낸 첫 번째 책이다. 
              지금의 이연을 만들어준 인생에서 가장 어둡고 찬란했던 1년을 담아낸, 그 어디서도 공개된 적 없는 이야기가 두 버전의 만화와 에세이로 펼쳐진다. 
              흑백 만화에서는 퇴사 이후 가난과 외로움 속에서 진정 자신을 위한 삶을 찾아가는 과정이 사계절 흐름에 따라 전개되며, 
              블루 만화에서는 건강을 되찾으려 찾은 수영장에서 발견한 빛나는 삶의 태도와 성찰이 서서히 드러난다. 그리고 못 다한 이야기를 보다 긴 에세이들로 자세히 풀어냈다.
              </p>

            </div>
 		<div class="post-entry-1 lg">
              <a href="single-post.html"><img src="../../assets/img/recommended-book2.jpg" alt="" class="img-fluid"></a>
              <div class="post-meta"><span class="date">이 달의 출판사 추천</span> <span class="mx-1">&bullet;</span> <span>2022.08</span></div>
              <h4><a href="single-post.html">세상의 마지막 기차역</a></h4>
              <p class="mb-4 d-block">봄이 시작되는 3월, 급행열차 한 대가 탈선해 절벽 아래로 떨어졌다. 
              수많은 중상자를 낸 이 대형 사고 때문에 유가족은 순식간에 사랑하는 가족, 연인을 잃었다. 그렇게 두 달이 흘렀을까. 사람들 사이에서 이상한 소문이 돌기 시작하는데…. 
              역에서 가장 가까운 역인 ‘니시유이가하마 역’에 가면 유령이 나타나 사고가 일어난 그날의 열차에 오르도록 도와준다는 것. 
              단 유령이 제시한 네 가지 규칙을 반드시 지켜야만 한다. 그렇지 않으면 자신도 죽게 된다. 이를 알고도 유가족은 한 치의 망설임도 없이 역으로 향한다. 
              과연 유령 열차가 완전히 하늘로 올라가 사라지기 전, 사람들은 무사히 열차에 올라 사랑하는 이의 마지막을 함께할 수 있을까</p>
		</div>

          </div>

<!-- 분야별 신간 -->
          <div class="col-lg-8">
            <div class="row g-5">
              <div class="col-lg-4 border-start custom-border">
                <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/novel.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">소설</span> <span class="mx-1">&bullet;</span> <span>2022.08.10</span></div>
                  <h4><a href="single-post.html">불편한 편의점 2</a></h4>
                </div>
                 <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/liberal-arts.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">인문</span> <span class="mx-1">&bullet;</span> <span>20220.07.26</span></div>
                  <h4><a href="single-post.html">중국사상의 지혜</a></h4>
                </div>
                <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/economy.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">경제</span> <span class="mx-1">&bullet;</span> <span>2022.07.22</span></div>
                  <h4><a href="single-post.html">세 번째 위기, 세 번째 기회</a></h4>
                </div>
                <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/history.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">역사/문화</span> <span class="mx-1">&bullet;</span> <span>2022.07.29</span></div>
                  <h4><a href="single-post.html">수메르 문명과 히브리 신화</a></h4>
                </div>
             <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/education.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">교육</span> <span class="mx-1">&bullet;</span> <span>2022.07.29</span></div>
                  <h4><a href="single-post.html">합격 SKY 심층면접(2023)</a></h4>
                </div>
              </div>
              
              
              <div class="col-lg-4 border-start custom-border">
                <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/arts.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">예술</span> <span class="mx-1">&bullet;</span> <span>2022.07.27</span></div>
                  <h4><a href="single-post.html">여름의 피부</a></h4>
                </div>
                <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/tech.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">과학/기술</span> <span class="mx-1">&bullet;</span> <span>2022.08.03</span></div>
                  <h4><a href="single-post.html">그래서 우리는 달에 간다</a></h4>
                </div>
                 <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/comics.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">만화</span> <span class="mx-1">&bullet;</span> <span>2022.07.31</span></div>
                  <h4><a href="single-post.html">중쇄를 찍자! 15</a></h4>
                </div>                
                <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/travel.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">여행</span> <span class="mx-1">&bullet;</span> <span>2022.08.10</span></div>
                  <h4><a href="single-post.html">디스 이즈 스페인(2022-2023)</a></h4>
                </div>
                     
                <div class="post-entry-1">
                  <a href="single-post.html"><img src="../assets/img/health.jpg" alt="" class="img-fluid"></a>
                  <div class="post-meta"><span class="date">건강</span> <span class="mx-1">&bullet;</span> <span>2022.08.22</span></div>
                  <h4><a href="single-post.html">근육의 신비 당신도 자연치유될 수 있다</a></h4>
                </div>                                          
              </div>

              <!-- Trending Section -->
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
                        <span class="number">4</span>
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

        </div> <!-- End .row -->
      </div>
    </section> <!-- End Post Grid Section -->
</main>
    
</body>
</html>