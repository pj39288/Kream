<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 리스트 페이지</title>

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
		
			<div class="list-box text-center d-flex justify-content-between">
			
				<nav>
					<ul class="nav nav-fill">
						<li class="nav-item"><a href="#" class="nav-link main-link">전체보기</a></li>
						<li class="nav-item"><a href="#" class="nav-link main-link">신발</a></li>
						<li class="nav-item"><a href="#" class="nav-link main-link">아우터</a></li>
						<li class="nav-item"><a href="#" class="nav-link main-link">가방</a></li>
						<li class="nav-item"><a href="#" class="nav-link main-link">지갑</a></li>
						<li class="nav-item"><a href="#" class="nav-link main-link">시계</a></li>
					</ul>
				</nav>
				
				<hr>
				
				<div>
				
					<filter>
						<hr>
						
						<h5>성별</h5>
						<input type="checkbox" id="checkboxInput"> 남성 
						<br>
						<input type="checkbox" id="checkboxInput"> 여성
						<br>
						<input type="checkbox" id="checkboxInput"> 키즈
						<br>
						<input type="checkbox" id="checkboxInput"> 전체보기

						<hr>
				
					</filter>
					
					
					<div>
					
					
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

</body>
</html>