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
		<div class="d-flex justify-content-between">
		
			<div>
				<h1>KREAM</h1>
			</div>
			
			<div>
				<h2>입찰하기</h2>
			</div>
		
		</div>
		
		<br>
		
		
		<section class="contents">
		
			<div class="bid-box">
			
				<div class="d-flex justify-content-around">
				
					<img width="20%" src="${goods.imagePath}"> <br>				
				
					<div>
						${goods.brand} <br>
						${goods.modelEnglishName} <br>
						${goods.modelKoreanName} <br>
						${param.size }

					</div>
					
				
				</div>
				
				<hr>
					
				<div class="d-flex justify-content-around">
					
					<div>
						<h5>즉시 구매가</h5>
						${bidSell.price }원
					
					</div>
					
					<div>
						<h5>즉시 판매가</h5>
						${bidBuy.price} 원			
					</div>					
				
				</div>
				
				<br>
				
				<c:choose>
					<c:when test="${param.act eq '구매' }">
						<div class="d-flex justify-content-around">
							<button type="button" id="buyBidBtn">구매 입찰</button>
							<button type="button" id="buyNowBtn">즉시 구매</button>
						</div>					
					</c:when>
					
					<c:otherwise>
						<div class="d-flex justify-content-around">
							<button type="button" id="sellBidBtn">판매 입찰</button>
							<button type="button" id="sellNowBtn">즉시 판매</button>
						</div>
					</c:otherwise>
				
				</c:choose>
				
				<hr>		
				
				<c:choose>
					<c:when test="${param.act eq '구매' }">
						<div class="d-flex justify-content-center">
						
							<div class="d-none " id="buyBid">
								<h5>구매 희망가</h5>
								<input type="text" id="buyBidInput" placeholder="희망가 입력">원					
								<button type="button" id="buyBidConfirmBtn">구매 입찰 계속</button>
							</div>			
				
					
							<div id="buyMain">
								<h5>즉시 구매가</h5>
								
								<button type="button" id="buyNowConfirmBtn" data-price = "${bidSell.price}" data-user-id = "${bidSell.userId}">즉시 구매 계속</button>
							</div>
						
						</div>
					
					</c:when>
					
					<c:otherwise>
						<div class="d-flex justify-content-center">
						
							<div class="d-none " id="sellBid">
								<h5>판매 희망가</h5>
								<input type="text" id="sellBidInput" placeholder="희망가 입력">원					
								<button type="button" id="sellBidConfirmBtn">판매 입찰 계속</button>
							</div>			
				
					
							<div id="sellMain">
								<h5>즉시 판매가</h5>
								
								<button type="button" id="sellNowConfirmBtn" data-price = "${bidBuy.price}" data-user-id = "${bidBuy.userId}">즉시 판매 계속</button>
							</div>
						
						</div>
					
					</c:otherwise>
				
				
				</c:choose>		
				
				
				
				<div id="commonTag" data-model-id = "${param.modelId}" data-act = "${param.act}" data-size = "${param.size}"></div>



				

	
							
			
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
			
			
			$("#buyNowBtn").on("click", function(){
				
				$("#buyMain").removeClass("d-none");
				$("#buyBid").addClass("d-none");
			});
			
			
			$("#buyBidBtn").on("click", function(){
				
				$("#buyBid").removeClass("d-none");
				$("#buyMain").addClass("d-none");
			});
			

			$("#sellNowBtn").on("click", function(){
				
				$("#sellMain").removeClass("d-none");
				$("#sellBid").addClass("d-none");
			});
			
			
			$("#sellBidBtn").on("click", function(){
				
				$("#sellBid").removeClass("d-none");
				$("#sellMain").addClass("d-none");
			});
			

			$("#buyBidConfirmBtn").on("click", function(){

				let price = $("#buyBidInput").val();
				
				let modelId = $("#commonTag").data("model-id");
				let act = $("#commonTag").data("act");
				let size = $("#commonTag").data("size");


				
				if(price == ""){
					alert("구매 희망 가격을 입력하세요");
					return;
				}
				
				
				$.ajax({
					
					type:"get"
					, url:"/bid/create"
					, data:{"modelId":modelId, "act":act, "price":price, "size":size}
					, success:function(data){
						if(data.result="success"){
							location.reload();
						} else {
							alert("구매 입찰 실패");
						} 
					}
					, error:function(){
						alert("구매 입찰 에러");
					}
					
	
				});
				
				
			});
			
			
			
			$("#buyNowConfirmBtn").on("click", function(){
				
				//let modelId = ${param.modelId};
				//let act = '${param.act}';
				//let price = ${bidSell.price};
				//let size = ${param.size};
				//let userId = ${bidSell.userId};
				
				let modelId = $("#commonTag").data("model-id");
				let act = $("#commonTag").data("act");
				let price = $(this).data("price");
				let size = $("#commonTag").data("size");
				let userId = $(this).data("user-id");



				
				$.ajax({
					
					type:"get"
					, url:"/bid/deal"
					, data:{"modelId":modelId, "act":act, "price":price, "size":size, "userId":userId}
					, success:function(data){
						if(data.result="success"){
							location.reload();
						} else {
							alert("즉시 구매 실패");
						} 
					}
					, error:function(){
						alert("즉시 구매 에러");
					}
					
					
				});
				
			});
			
			
			

			$("#sellBidConfirmBtn").on("click", function(){


				let price = $("#sellBidInput").val();
				
				let modelId = $("#commonTag").data("model-id");
				let act = $("#commonTag").data("act");
				let size = $("#commonTag").data("size");

				
				if(price == ""){
					alert("판매 희망 가격을 입력하세요");
					return;
				}
				
				
				$.ajax({
					
					type:"get"
					, url:"/bid/create"
					, data:{"modelId":modelId, "act":act, "price":price, "size":size}
					, success:function(data){
						if(data.result="success"){
							location.reload();
						} else {
							alert("판매 입찰 실패");
						} 
					}
					, error:function(){
						alert("판매 입찰 에러");
					}
					
	
				});
				
				
			});
			
			
			
			$("#sellNowConfirmBtn").on("click", function(){
				

				
				let modelId = $("#commonTag").data("model-id");
				let act = $("#commonTag").data("act");
				let size = $("#commonTag").data("size");

				let price = $(this).data("price");
				let userId = $(this).data("user-id");

				
				
				$.ajax({
					
					type:"get"
					, url:"/bid/deal"
					, data:{"modelId":modelId, "act":act, "price":price, "size":size, "userId":userId}
					, success:function(data){
						if(data.result="success"){
							location.reload();
						} else {
							alert("즉시 판매 실패");
						} 
					}
					, error:function(){
						alert("즉시 판매 에러");
					}
					
					
				});
				
			});
			
			
		});
	
	
	
	</script>

</body>
</html>