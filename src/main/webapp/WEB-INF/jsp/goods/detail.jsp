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
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<link rel="stylesheet" href="/static/css/style.css" type="text/css">

</head>
<body>

	<div id="wrap">
	
		<c:import url="/WEB-INF/jsp/include/header.jsp"></c:import>

		
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
							
								<c:choose>
									<c:when test="${param.size eq null }">
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
										  모든 사이즈
										</button>
									</c:when>
									<c:otherwise>
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
										  ${param.size }
										</button> 						
									</c:otherwise>
									
								</c:choose>
													
							 </c:when>
							 
							<c:when test="${goods.category eq '가방'}">
								<h5>ONE SIZE</h5> 
							 </c:when>
							 
							<c:when test="${goods.category eq '시계'}">
								<h5>ONE SIZE</h5> 
							 </c:when>
							 
							<c:when test="${goods.category eq '아우터'}">
								<!-- Button trigger modal -->
								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter2">
								  모든 사이즈
								</button>
							 </c:when>
							 
							<c:otherwise>
							 ... 
							 </c:otherwise>
						</c:choose>
					
					
					</div>
	
					<hr>
					
					<div class="d-flex justify-content-around">
					
					<a href="/bid/create/view?modelId=${goods.id }&act=구매&size=${param.size}"><button type = "button" id = "buyBtn">구매  즉시구매가</button></a>

					<a href="/bid/create/view?modelId=${goods.id }&act=판매&size=${param.size}"><button type = "button" id = "sellBtn">판매 즉시판매가</button></a>
						
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
					
					
					
					<div id="chart_div"></div>
					
					
				</div>

				
				

			
			</div>
		

		
		</section>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp"></c:import>

	
	</div>
	
	

	
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
  	        	<a href="/goods/detail/view?modelId=${goods.id }&size=245"><button type="button">245</button></a>
  	        	<a href="/goods/detail/view?modelId=${goods.id }&size=250"><button type="button">250</button></a>
  	        	<a href="/goods/detail/view?modelId=${goods.id }&size=255"><button type="button">255</button></a>
	        </div>
	        <br>
			<div class="d-flex justify-content-around">
  	        	<a href="/goods/detail/view?modelId=${goods.id }&size=260"><button type="button">260</button></a>
  	        	<a href="/goods/detail/view?modelId=${goods.id }&size=265"><button type="button">265</button></a>
  	        	<a href="/goods/detail/view?modelId=${goods.id }&size=270"><button type="button">270</button></a>
			</div>
			<br>
			<div class="d-flex justify-content-around">
  	        	<a href="/goods/detail/view?modelId=${goods.id }&size=275"><button type="button">275</button></a>
  	        	<a href="/goods/detail/view?modelId=${goods.id }&size=280"><button type="button">280</button></a>
  	        	<a href="/goods/detail/view?modelId=${goods.id }&size=285"><button type="button">285</button></a>		
			</div>
			<br>
	      </div>
	      <div class="modal-footer">
	      </div>
	    </div>
	  </div>
	</div>
	
	

	
	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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
  	        	<a href="/goods/detail/view?modelId=${goods.id }&size=S"><button type="button">S</button></a>
  	        	<a href="/goods/detail/view?modelId=${goods.id }&size=M"><button type="button">M</button></a>
  	        	<a href="/goods/detail/view?modelId=${goods.id }&size=L"><button type="button">L</button></a>
	        </div>
	        <br>
			<div class="d-flex justify-content-around">
  	        	<a href="/goods/detail/view?modelId=${goods.id }&size=XL"><button type="button">XL</button></a>
  	        	<a href="/goods/detail/view?modelId=${goods.id }&size=XXL"><button type="button">XXL</button></a>
			</div>
			<br>
	      </div>
	      <div class="modal-footer">
	      </div>
	    </div>
	  </div>
	</div>
	
	
	
	<script>

	google.charts.load('current', {packages: ['corechart', 'line']});
	google.charts.setOnLoadCallback(drawBasic);

	function drawBasic() {

	      var data = new google.visualization.DataTable();
	      data.addColumn('date', 'X');
	      data.addColumn('number', 'Deal');

	      data.addRows([
	      // date는 문자열로 해야한다?
	      [2023-05-04 18:17:05, 2500000], [2023-05-04 18:34:27, 1800000], [2023-05-04 18:35:32, 1500000]
		  // [5, 2500000], [7, 1800000], [2, 1500000]

	      ]);

	      var options = {
	        hAxis: {
	          title: 'Date'
	        },
	        vAxis: {
	          title: 'Price'
	        }
	      };

	      var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

	      chart.draw(data, options);
	    }		
		
		

	</script>

</body>
</html>