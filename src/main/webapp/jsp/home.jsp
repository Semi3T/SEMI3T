<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body>


	${r }
	<div>
		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="img/slideimg/slide1.jpg" />
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="img/slideimg/slide2.jpg" />
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="img/slideimg/slide3.jpg" />
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>


	<div class="product-container">
		<c:forEach var="p" items="${product }">
			<div class="product-box">
				<div class="a-box">
					<a href="DetailC?p_no=${p.p_no }"><img
						src="jsp/master/imgFolder/${p.p_img }"></a>
				</div>
				<div class="a-box">
				<a href="DetailC?p_no=${p.p_no }">${p.p_brand }</a>
				</div>
				<div class="a-box" style="font-size: 20pt;">
					<a href="DetailC?p_no=${p.p_no }">${p.p_title }</a>
				</div>
				<div class="a-box">
					<a href="DetailC?p_no=${p.p_no }">${p.p_price } 원</a>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>