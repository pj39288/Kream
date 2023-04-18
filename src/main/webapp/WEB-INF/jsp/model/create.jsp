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
					<li class="nav-item"><a href="/user/edit/view" class="nav-link main-link">MY</a></li>
				</ul>
			</nav>
		
		</div>
		
		<br>
		
		<section class="contents">
		
			<div class="create-box text-center d-flex justify-content-between">
			
			<div>
				<input type="file" id="fileInput">
				
				<h5>카테고리 입력</h5>	
				<select id="categoryInput">
					<option value="신발">신발</option>
					<option value="아우터">아우터</option>
					<option value="가방">가방</option>
					<option value="지갑">지갑</option>
					<option value="시계">시계</option>
					<option value="" selected>select one</option>
				</select>
				<br>
				

				<h5>성별 입력</h5>	
				<select id="genderInput">
					<option value="남성">남성</option>
					<option value="여성">여성</option>
					<option value="키즈">키즈</option>
					<option value="모든 성별">모든 성별</option>
					<option value="" selected>select one</option>
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
						<input type="text" id="modelNumberInput" placeholder="제품 모델번호를 입력하세요">						
					</div>	
					<br>
							
					<div class="d-flex">
						<h5>출시일</h5>
						<input type="text" id="launchDateInput" placeholder="제품 출시일을 입력하세요">						
					</div>
					<br>
					
					<div class="d-flex">
						<h5>컬러</h5>
						<input type="text" id="mainColorInput" placeholder="제품 컬러를 입력하세요">						
					</div>
					<br>
					
					<div class="d-flex">
						<h5>발매가</h5>
						<input type="text" id="launchPriceInput" placeholder="제품 발매가를 입력하세요">		
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
	
	<script>
		$(document).ready(function(){
			
			$("#createBtn").on("click", function(){
				
				let brand = $("#brandInput").val();
				let modelNumber = $("#modelNumberInput").val();
				let modelEnglishName = $("#modelEnglishNameInput").val();
				let modelKoreanName = $("#modelKoreanNameInput").val();
				let launchDate = $("#launchDateInput").val();
				let mainColor = $("#mainColorInput").val();
				let launchPrice = $("#launchPriceInput").val();
				let file = $("#fileInput")[0];
				let category = $("#categoryInput").val();
				let gender = $("#genderInput").val();
				
				if(brand == ""){
					alert("브랜드를 입력하세요");
					return;
				}
				if(modelNumber == ""){
					alert("모델 넘버를 입력하세요");
					return;
				}
				if(modelEnglishName == ""){
					alert("모델 영문명을 입력하세요");
					return;
				}
				if(modelKoreanName == ""){
					alert("모델 한글명을 입력하세요");
					return;
				}
				// table에 NOT NULL 조건에 해당되지 않으므로 주석처리
				
				//if(launchDate == ""){
				//	alert("발매일을 입력하세요");
				//	return;
				//}
				//if(mainColor == ""){
				//	alert("메인컬러를 입력하세요");
				//	return;
				//}
				//if(launchPrice == ""){
				//	alert("발매가를 입력하세요");
				//	return;
				//}
				if(file.files.length == 0){
					alert("사진을 업로드하세요");
					return;
				}
				if(category == ""){
					alert("카테고리를 선택하세요");
					return;
				}
				if(gender == ""){
					alert("성별을 선택하세요");
					return;
				}
				
				var formData = new FormData();
				formData.append("brand", brand);
				formData.append("modelNumber", modelNumber);
				formData.append("modelEnglishName", modelEnglishName);
				formData.append("modelKoreanName", modelKoreanName);
				//if(launchDate == ""){
				//	formData.append("launchDate", null);
				//} else {
				//	formData.append("launchDate", launchDate);					
				//}
				if(launchDate != ""){
					formData.append("launchDate", launchDate);
				}
				formData.append("mainColor", mainColor);
				formData.append("launchPrice", launchPrice);
				formData.append("file", file.files[0]);
				formData.append("category", category);
				formData.append("gender", gender);
				
				$.ajax({
					
					type:"post"
					, url:"/model/create"
					, data:formData
					, enctype:"multipart/form-data"
					, processData:false
					, contentType:false
					, success:function(data){
						if(data.result == "success"){
							location.reload();
						} else {
							alert("업로드 실패");
						}
					}
					, error:function(){
						alert("업로드 에러")
					}
					
				});
				
				
			});
			
		});
	
	</script>

</body>
</html>