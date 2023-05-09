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

		<c:import url="/WEB-INF/jsp/include/header.jsp"></c:import>

		
		<br>
		
		<section class="contents">
		
			<div class="login-box text-center">
				
				<hr>
				<input type="text" id="emailInput" placeholder="이메일을 입력하세요"> <br>
				<input type="text" id="passwordInput" placeholder="비밀번호를 입력하세요"> <br>		
				<br>
				<div>				
					<button type="button" id="loginBtn">로그인</button> 
					<button type="button" id="joinBtn">회원가입</button>
				</div>
					
				<hr>	
			
			
			</div>
		
		</section>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp"></c:import>

	</div>
	
	<script>
		$(document).ready(function(){
			
			$("#loginBtn").on("click", function(){
				
				let email = $("#emailInput").val();
				let password = $("#passwordInput").val();
								
				if(email == ""){
					alert("이메일을 입력하세요");
					return;
				}
				
				if(password == ""){
					alert("비밀번호를 입력하세요");
					return;
				}
				
				
				$.ajax({
					
					type:"post"
					, url:"/user/login"
					, data:{"email":email, "password":password}
					, success:function(data){
						if(data.result == "success"){
							location.href="/goods/list/view";
						} else {
							alert("로그인 실패");
						}			
						
					}
					, error:function(){
						alert("로그인 에러");
					}
					
				});
				
			});
			
			
			
			$("#joinBtn").on("click", function(){
				location.href="/user/signup/view";
			});
			
			
		});
	
	
	
	</script>


</body>
</html>