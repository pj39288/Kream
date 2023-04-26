<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/static/css/style.css" type="text/css">

</head>
<body>

	<div id="wrap">
		<div class="d-flex">
		
			<header>
				<h1>KREAM</h1>
			</header>
			
			<nav>
				<ul class="nav nav-fill">
					<li class="nav-item"><a href="#" class="nav-link main-link">HOME</a></li>
					<li class="nav-item"><a href="#" class="nav-link main-link">STYLE</a></li>
					<li class="nav-item"><a href="#" class="nav-link main-link">SHOP</a></li>
					<li class="nav-item"><a href="/user/edit/view" class="nav-link main-link">MY</a></li>
				</ul>
			</nav>
		
		</div>
		
		<br>
		
		<section class="contents">
		
			<div class="detail-box d-flex">
				
				<div>
					<img width="90%" src="${goods.imagePath}"> <br>				
				</div>
				
				<div>
					${goods.brand} <br>
					${goods.modelEnglishName} <br>
					${goods.modelKoreanName} <br>
					
					<br>
					
					<div class="d-flex justify-content-between">
						<h7>사이즈</h7>			
						
						<c:choose>
						
							<c:when test="${goods.category eq '신발'}">
							 ... 
							 </c:when>
							 
							<c:when test="${goods.category eq '가방'}">
								<h5>ONE SIZE</h5> 
							 </c:when>
							 
							<c:when test="${goods.category eq '시계'}">
								<h5>ONE SIZE</h5> 
							 </c:when>
							 
							<c:when test="${goods.category eq '아우터'}">
							 ... 
							 </c:when>
							 
							<c:otherwise>
							 ... 
							 </c:otherwise>
						</c:choose>
					
					
					</div>
	
					<hr>
					
					<div class="d-flex">
						<button type = "button">구매  즉시구매가</button>
						
						<button type = "button">판매 즉시판매가</button>
					
					</div>

					<br>
					
					<h5>상품 정보</h5>
					<hr>
					
					<div class="d-flex justify-content-between">
						<div>
							<h7>모델 번호</h7> <br>
							${goods.modelNumber}
						</div>
						
						<div>
							<h7>출시일</h7> <br>
							${goods.launchDate}
						</div>
						
						<div>
							<h7>컬러</h7> <br>
							${goods.mainColor}
						
						</div>
						
						<div>
							<h7>발매가</h7> <br>
							${goods.launchPrice }원
						</div>
					
					</div>
					
				</div>

				
				

			
			</div>
		

		
		</section>
		
		<footer>
			
			<div class="text-center">
				<hr>
				© KREAM Corp.		
			</div>
		</footer>
	
	</div>
	
	
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
	  모든 사이즈
	</button>
	
	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLongTitle">사이즈</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <div class="d-flex justify-content-around">
  	        	<button type="button">245</button>
	        	<button type="button">250</button>
		        <button type="button">255</button>
	        </div>
	        <br>
			<div class="d-flex justify-content-around">
	        	<button type="button">260</button>
		        <button type="button">265</button>
		        <button type="button">270</button>
			</div>
			<br>
			<div class="d-flex justify-content-around">
		        <button type="button">275</button>
		        <button type="button">280</button>		
   		        <button type="button">285</button>			
			</div>
			<br>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Save changes</button>
	      </div>
	    </div>
	  </div>
	</div>

</body>
</html>