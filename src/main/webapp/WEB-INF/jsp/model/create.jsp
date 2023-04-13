<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 업로드 페이지</title>

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
					<li class="nav-item"><a href="#" class="nav-link main-link">MY</a></li>
				</ul>
			</nav>
		
		</div>
		
		<br>
		
		<section class="contents">
		
			<div class="create-box text-center d-flex justify-content-between">
			
			<div>
				<img src="" alt="제품 사진">
				
			<br>
				
			
			<h5>카테고리 입력</h5>	
			<select>
				<option>신발</option>
				<option>아우터</option>
				<option>가방</option>
				<option>지갑</option>
				<option>시계</option>
				<option selected>select one</option>
			</select>
			
			<br>
			
			
			
			<h5>성별 입력</h5>	
			<select>
				<option>남성</option>
				<option>여성</option>
				<option>키즈</option>
				<option selected>select one</option>
			</select>
				
			
			</div>
			
			
				<div>
					<div class="d-flex">
						<h5>제품 브랜드</h5>
						<input type="text" id="brandInput" placeholder="제품 브랜드를 입력하세요">									
					</div>
					<br>
					
					<div class="d-flex">
						<h5>제품 영문 명</h5>
						<input type="text" id="modelEnglishNameInput" placeholder="제품 영문 명을 입력하세요">									
					</div>
					<br>
					
					<div class="d-flex">
						<h5>제품 한글 명</h5>
						<input type="text" id="modelKoreanNameInput" placeholder="제품 한글 명을 입력하세요">	
					</div>
					<br>
							
					<div class="d-flex">
						<h5>모델번호</h5>
						<input type="text" id="modelNumber" placeholder="제품 모델번호를 입력하세요">						
					</div>	
					<br>
							
					<div class="d-flex">
						<h5>출시일</h5>
						<input type="text" id="launchDate" placeholder="제품 출시일을 입력하세요">						
					</div>
					<br>
					
					<div class="d-flex">
						<h5>컬러</h5>
						<input type="text" id="mainColor" placeholder="제품 컬러를 입력하세요">						
					</div>
					<br>
					
					<div class="d-flex">
						<h5>발매가</h5>
						<input type="text" id="launchPrice" placeholder="제품 발매가를 입력하세요">		
					</div>
					<br>
					
					<button type="button" id="createBtn">저장</button>				
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
	
	<section>
	
	
	</section>

</body>
</html>