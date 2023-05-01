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
			
			<div text center>
				<h1>입찰하기</h1>
			</div>
		
		</div>
		
		<br>
		
		<section class="contents">
		
			<div class="bid-box">
			
				<div class="d-flex">
				
					<img width="90%" src="${goods.imagePath}"> <br>				
				
					<div>
						${goods.brand} <br>
						${goods.modelEnglishName} <br>
						${goods.modelKoreanName} <br>

					</div>
					
					<hr>
				
				</div>
				
				<div class="d-flex justify-content-around">
				
					<h5>즉시 구매가</h5>
					
					<h5>즉시 판매가</h5>
				
				</div>
				
				<br>
				
				<c:choose>
					<c:when test="${param.act eq '구매' }">
						<div class="d-flex justify-content-around">
							<button type="button" id="buyBid">구매 입찰</button>
							<button type="button" id="buyNow">즉시 구매</button>
						</div>					
					</c:when>
					
					<c:otherwise>
						<div class="d-flex justify-content-around">
							<button type="button" id="sellBid">판매 입찰</button>
							<button type="button" id="sellNow">즉시 판매</button>
						</div>
					</c:otherwise>
				
				</c:choose>
				
				
				<div>
					<h5>즉시 구매가</h5>
					
					<button type="button" id="buyNowBtn">즉시 구매 계속</button>
				</div>
				
				
				<div>
					<h5>구매 희망가</h5>
					<input type="text" id="buyBidInput" placeholder="희망가 입력">원					
					<button type="button" id="buyBidBtn">구매 입찰 계속</button>
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
	
	<script>
		$(document).ready(function(){
			
			$("#buyBidBtn").on("click", function(){
				
				
				$.ajax({
					
					
					
					
				});
				
				
			});
			
			
			
			$("buyNowBtn").on("click", function(){
				
				let modelId = ${goods.id};
				let act = 구매;
				let price = 
				let size = ${param.size};
				let address = null;
				let account = null;
				
				
				$.ajax({
					
					type:"get"
					, url:"/bid/create"
					, data:{"modelId":modelId, "act":act, "price":price, "size":size, "address":address, "account":account}
					, success:function(data){
						if(data.result="success"){
							location.reload();
						} else {
							alert("구매입찰 실패");
						} 
					}
					, error:function(){
						alert("구매입찰 에러");
					}
					
					
				});
				
			});
			
			
		});
	
	
	
	</script>

</body>
</html>