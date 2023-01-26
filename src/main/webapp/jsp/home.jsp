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
	<c:choose>
	<c:when test="${sessionScope.account eq null}">
	<div>
		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<a href="LoginC"><img class="d-block w-100" src="img/slideimg/oatslide.png" /></a>
					<!-- p_no로 복사해서 사용하시오  -->
				</div>
				<div class="carousel-item">
					<a href="LoginC"><img class="d-block w-100" src="img/slideimg/offslide.png" /></a>
				</div>
				<div class="carousel-item">
					<a href="LoginC"><img class="d-block w-100" src="img/slideimg/jubileeslide.png" /></a>
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
	</c:when>
		<c:otherwise>
	<div>
		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<a href="http://localhost/Semi3T/DetailC?p_no=77"><img class="d-block w-100" src="img/slideimg/oatslide.png" /></a>
					<!-- p_no로 복사해서 사용하시오  -->
				</div>
				<div class="carousel-item">
					<a href="http://localhost/Semi3T/DetailC?p_no=90"><img class="d-block w-100" src="img/slideimg/offslide.png" /></a>
				</div>
				<div class="carousel-item">
					<a href="http://localhost/Semi3T/DetailC?p_no=43"><img class="d-block w-100" src="img/slideimg/jubileeslide.png" /></a>
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
	</c:otherwise>
	</c:choose>

	<c:choose>
		<c:when test="${sessionScope.account eq null}">
			<div class="product-container">
				<c:forEach var="p" items="${product }">
					<div class="product-box">
						<div class="product-ani">
							<c:if test="${p.p_new eq '1'}">
								<div class="new-text">New</div>
							</c:if>
							<c:if test="${p.p_sale eq '1' }">
								<div class="sale-text">Sale</div>
							</c:if>
								<div class="a-box">
									<a href="LoginC"><img
										src="img/product/19_img.png"></a>
								</div>
							<div class="a-box">
								<a>${p.p_title }</a> <br> <a>${p.p_price - p.p_saleprice} 원</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		
		</c:when>
		<c:otherwise>
			<div class="product-container">
				<c:forEach var="p" items="${product }">
					<div class="product-box">
						<div class="product-ani">
							<c:if test="${p.p_new eq '1'}">
								<div class="new-text">New</div>
							</c:if>
							<c:if test="${p.p_sale eq '1' }">
								<div class="sale-text">Sale</div>
							</c:if>
								<div class="a-box">
									<a href="DetailC?p_no=${p.p_no }"><img
										src="jsp/master/imgFolder/${p.p_img }"></a>
								</div>
							<div class="a-box">
								<a>${p.p_title }</a> <br> <a>${p.p_price - p.p_saleprice} 원</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>