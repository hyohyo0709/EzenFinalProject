<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
    
    <script type="text/javascript">
    $(document).ready(function(){
    	var currentPosition = parseInt($("#quickmenu").css("top"));
    	$(window).scroll(function()
    	{       var position = $(window).scrollTop();
    	       $("#quickmenu").stop().animate({"top":position+currentPosition+"px"},1000);
    	 });
    	
    	$("#member").click(function(){
    		var url = document.getElementsById("memurl")
    		console.log(url);
    	});
    	
    	  });
    </script>

    <link href="./assets/css/style.css" rel="stylesheet" />
    

    <title>마이페이지</title>
 	<style>
 	#mypagemenu{
 	padding-bottom: 50px;
 	}
 	</style>
    <link
      rel="short icon"
      href="./assets/img/favicon.png"
      type="image/x-icon"
    />
  </head>
  <body>
  
   <!-- Nabar start -->

    <%@ include file = "./common/header.jsp"%>

    <!-- Header end -->

  <!-- breadclumb end -->
  <!-- head end -->
  
  
  <!-- mypage menu start -->
  <div id="mypagemenu">
	<%@ include file = "./common/mypagemenu.jsp"%>
  </div>
  <!-- mypage menu end -->
  


  <!-- order detail start  -->

  <!-- order detail start  -->
  
  <!-- Footer Start -->
 <%@ include file = "./common/footer.jsp"%>
  <!-- Footer end -->
</html>
