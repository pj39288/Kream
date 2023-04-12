<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<li class="nav-item"><a href="#" class="nav-link main-link">MY</a></li>
				</ul>
			</nav>
		
		</div>
		
		<br>
		
		<section class="contents">
		
			<div class="edit-box text-center">
				
				
				<hr>
				<div class="d-flex justify-content-between">
					<h3>사진</h3>
					<div>
						<h3>" ${userName} " 님 안녕하세요</h3> 
					</div>
					<a href="/user/logout/view">로그아웃</a>
					<button type="button" id="logoutBtn">로그아웃</button>				
				</div>
				<hr>
				<div>
					<h3>로그인 정보</h3>
					<br>
					
						<div class="d-flex justify-content-center">
							<h5>이메일 주소</h5>
							<input type="text" id="emailInput" value="${email}">						
						</div>
						<br>
						
						<div class="d-flex justify-content-center">
							<h5>비밀번호</h5>					
							<input type="text" id="passwordInput" value="${user.password }">
						</div>
				</div>
				<hr>
				
				<div>
					<h3>개인 정보</h3>
					<br>
						<div class="d-flex justify-content-center">
							<h5>이름</h5>
							<input type="text" id="userNameInput" value="${userName}">	<br>
						</div>
						<br>
						
						<div class="d-flex justify-content-center">
							<h5>휴대폰 번호</h5>	
							<input type="text" id="phoneNumberInput" value="${user.phoneNumber}">	<br>
						</div>
						<br>
						
						<div class="d-flex justify-content-center">
							<h5>주소지</h5>	
							<input type="text" id="addressInput" value="${user.address}">	<br>	
						</div>
				</div>

				
				<br>
				<button type="button" id="editBtn">회원가입 수정</button>		
				<hr>	
			
			
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
	
	
	
	</script>

</body>
</html>