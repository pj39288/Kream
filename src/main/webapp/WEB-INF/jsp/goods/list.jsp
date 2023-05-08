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
	
		
		<c:import url="/WEB-INF/jsp/include/header.jsp"></c:import>
		
		
		<br>
		
		<section class="contents">
		
			<div class="text-center d-flex justify-content-between">
			
				<nav class="nav-2">
					<ul class="nav nav-fill">
						<li class="nav-item"><a href="/goods/list/view" class="nav-link main-link">전체</a></li>
						<li class="nav-item"><a href="/goods/list/view?category=신발" class="nav-link main-link">신발</a></li>
						<li class="nav-item"><a href="/goods/list/view?category=아우터" class="nav-link main-link">아우터</a></li>
						<li class="nav-item"><a href="/goods/list/view?category=가방" class="nav-link main-link">가방</a></li>
						<li class="nav-item"><a href="/goods/list/view?category=지갑" class="nav-link main-link">지갑</a></li>
						<li class="nav-item"><a href="/goods/list/view?category=시계" class="nav-link main-link">시계</a></li>
					</ul>
				</nav>
				
				<hr>
				
			</div>
				
				
			<div class="d-flex">
			
				<div class="filter">
					<hr>
					
					<h5>성별</h5>
					<input type="checkbox" id="checkboxMaleInput"> 남성 
					<br>
					<input type="checkbox" id="checkboxFemaleInput"> 여성
					<br>
					<input type="checkbox" id="checkboxKidsInput"> 키즈
					<br>
					<hr>
			
				</div>
				
				
				<div class="list-box d-flex flex-wrap">
					
						<c:forEach var="goods" items="${goodsList}">
						
						<a href="/goods/detail/view?modelId=${goods.id }" class="nav-link main-link">
						
							<div class="list-box-content">
								<img width="100%" src="${goods.imagePath}"> <br>
								${goods.brand} <br>
								${goods.modelEnglishName} <br>
								${goods.modelKoreanName} <br>
							</div>
			
						</a>
						
						
						</c:forEach>					
	
				</div>
				
			</div>
		
		</section>

		<c:import url="/WEB-INF/jsp/include/footer.jsp"></c:import>
	
	</div>
	
	<script>
		$(document).ready(function(){
			$("#checkboxMaleInput").on("click", function(){
				
				var url = window.location.href;
				
				var url2 = window.location.pathname;
				var url3 = window.location.search;
				
				var url4 = "?gender=남성";
				
				// 주소 이어붙여주는 과정
				var url5 = url2 + url3 + url4;
									
				// <a href="url?category=male">어어</a>
				location.href=url5;
			});
			
			$("#checkboxFemaleInput").on("click", function(){
				
				var url = window.location.href;
				
				var url2 = window.location.pathname;
				var url3 = window.location.search;
				
				var url4 = "?gender=여성";
				
				// 주소 이어붙여주는 과정
				var url5 = url2 + url3 + url4;
									
				// <a href="url?category=male">어어</a>
				location.href=url5;
			});
			
			$("#checkboxKidsInput").on("click", function(){
				
				var url = window.location.href;
				
				var url2 = window.location.pathname;
				var url3 = window.location.search;
				
				var url4 = "?gender=키즈";
				
				// 주소 이어붙여주는 과정
				var url5 = url2 + url3 + url4;
									
				// <a href="url?category=male">어어</a>
				location.href=url5;
			});
			
						
		});
	
	
	
	</script>

</body>
</html>