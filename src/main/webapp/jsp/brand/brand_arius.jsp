<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="brand_logo">
		<img src="img/brand/arius.png">
	</div>
	<div class="brand_list">
		<select onchange="if(this.value) location.href=this.value">
			<option value="brand_ariusC?brand=arius">ARIUS</option>
			<option value="brand_srtC?brand=srt">SRT</option>
			<option value="brand_gehennaC?brand=gehenna">GEHENNA</option>
			<option value="brand_abydosC?brand=abydos">ABYDOS</option>
			<option value="brand_shan_hai_jingC?brand=shan_hai_jing">SHAN
				HAI JING</option>
			<option value="brand_trinityC?brand=trinity">TRINITY</option>
		</select>

	</div>
	<c:choose>
		<c:when test="${sessionScope.account eq null}">

			<div class="product-container">
				<c:forEach var="b" items="${brand }">
					<div class="product-box">
						<div class="product-ani">
							<c:if test="${b.p_new eq '1'}">
								<div class="new-text">New</div>
							</c:if>
							<c:if test="${b.p_sale eq '1' }">
								<div class="sale-text">Sale</div>
							</c:if>
							<div class="a-box">
								<a href="LoginC"><img src="img/product/19_img.png"></a>
							</div>
							<div class="a-box">
								<a>${b.p_title }</a> <br> <a>${b.p_price - p.p_saleprice} 원</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

		</c:when>
		<c:otherwise>
			<div class="product-container">
				<c:forEach var="b" items="${brand }">
					<div class="product-box">
						<div class="product-ani">
							<c:if test="${b.p_new eq '1'}">
								<div class="new-text">New</div>
							</c:if>
							<c:if test="${b.p_sale eq '1' }">
								<div class="sale-text">Sale</div>
							</c:if>
							<div class="a-box">
								<a href="DetailC?p_no=${b.p_no }"><img
									src="jsp/master/imgFolder/${b.p_img }"></a>
							</div>
							<div class="a-box">
								<a>${b.p_title }</a> <br> <a>${b.p_price - p.p_saleprice} 원</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:otherwise>
	</c:choose>

</body>
</html>