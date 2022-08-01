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


<style>
/* 베스트셀러 랭크 스타일 */
.rank{
    display: block;
    position: absolute;
    top: 0;
    min-width: 25px;
    width: 35px;
    height: 35px;
    background: #f04653;
    text-align: center;
    font-family: 'Tahoma','Malgun Gothic','Apple SD Gothic Neo','Dotum','Sans-Serif';
    font-size: 15px;
    color: #fff;
    line-height: 25px;
    transition: all .2s;
}
/* 베스트셀러 책 제목 */
.title{
	color:#212529;
	font-size: 15px;
	text-align: center;
}

 .card-img-top {
    width: 100%;
    height: 20vw;
    object-fit: cover;
}



</style>



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
         	<p class="title"> 종합 주간 베스트셀러 <span style="color:red"> Top 5 </span> </p>

                <div class="card">  
                 <a href="/">	
				    <img src="/assets/img/역행자.jpg"  class="card-img-top embed-responsive-item" alt="역행자">
				    <strong class="rank">1</strong>
				    <div class="card-body" style="text-align:center">
				    <small>[자기계발]</small>
				     <h5 class="card-title">역행자</h5>
				     <small class="text-muted" style="text-align:center" >
				     "돈.시간.운명으로부터 완전한 자유를 얻는 7단계 인생 공략집"
				      </small>
				    </div>
				    </a>
				    </div>
				  <div class="card-footer"></div>

					<div class="card">
                    <a href="/">
                 	<strong class="rank">2</strong>
				    <img src="/assets/img/헤어질결심.jpg"  class="card-img-top embed-responsive-item" alt="헤어질결심">
				    <div class="card-body" style="text-align:center">
				    <small>[영화]</small>
				     <h5 class="card-title">헤어질결심</h5>
				     <small class="text-muted" style="text-align:center" >
				     "2022 칸 영화제 감독상 수상작 〈헤어질 결심〉 오리지널 각본을 만나다"
				      </small>
				    </div>
				    </a>
				    </div>
				  <div class="card-footer"></div>

    			<div class="card">
                    <a href="/">
                 	<strong class="rank">3</strong>
				    <img src="/assets/img/호감가는말투에는비밀이있다.jpg"  class="card-img-top embed-responsive-item" alt="호감말투">
				    <div class="card-body" style="text-align:center">
				    <small>[자기계발]</small>
				     <h5 class="card-title">호감 가는 말투에는</br>비밀이 있다 </h5>
				     <small class="text-muted" style="text-align:center" >
				     "오해는 줄이고 이해는 높이는 말하기를 배우다!"
				      </small>
				    </div>
				    </a>
				    </div>
				  <div class="card-footer"></div>
           
             
              <div class="card">  
                 <a href="/">	
				    <img src="/assets/img/7c98a7c9-77df-450f-84b9-d12529fc3b36_cd48274d-3136-495e-a52a-a1b7e3a5c17f_냉정과열정사이blue.jpg"  class="card-img-top embed-responsive-item" alt="죄와벌">
				    <strong class="rank">4</strong>
				    <div class="card-body" style="text-align:center">
				    <small>[소설]</small>
				     <h5 class="card-title">냉정과 열정사이</h5>
				     <small class="text-muted" style="text-align:center" >
				     "선물하고 싶은 책"
				      </small>
				    </div>
				    </a>
				    </div>
				  <div class="card-footer"></div>
             
         	<div class="card">
                    <a href="/">
                 	<strong class="rank">5</strong>
				    <img src="/assets/img/23621631-0971-46b8-bfa2-b649cc3294cf_test_up.jpg"  class="card-img-top embed-responsive-item" alt="죄와벌">
				    <div class="card-body" style="text-align:center">
				    <small>[소설]</small>
				     <h5 class="card-title">죄와벌</h5>
				     <small class="text-muted" style="text-align:center" >
				     " 러시아의 대문호 도스토예프스키의 최고작 "
				      </small>
				    </div>
				    </a>
				    </div>
				 

    			</div> <!--	"col-lg-4"의 끝 -->
				</div>
              </div> <!-- End Trending Section -->
            </div>
         </div>
</main>
    
</body>
</html>