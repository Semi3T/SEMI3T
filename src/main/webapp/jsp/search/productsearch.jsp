<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search</title>
</head>
<body>
	<c:choose>
		<c:when test="${search.size() == 0 }">
			<br>
			<br>
			<h1>검색결과가 없습니다.</h1>
			<br>
			<br>
		</c:when>
		<c:when test="${sessionScope.account eq null}">
			<div class="product-container">
				<c:forEach var="s" items="${search }">
					<div class="product-box">
						<div class="product-ani">
							<c:if test="${s.p_new eq '1'}">
								<div class="new-text">New</div>
							</c:if>
							<c:if test="${s.p_sale eq '1' }">
								<div class="sale-text">Sale</div>
							</c:if>
							<div class="a-box">
								<a href="LoginC"><img src="img/product/19_img.png"></a>
							</div>
							<div class="a-box">
								<a>${s.p_title }</a> <br> <a>${s.p_price } 원</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

		</c:when>
		<c:otherwise>
			<div class="product-container">
				<c:forEach var="s" items="${search }">
					<div class="product-box">
						<div class="product-ani">
							<c:if test="${s.p_new eq '1'}">
								<div class="new-text">New</div>
							</c:if>
							<c:if test="${s.p_sale eq '1' }">
								<div class="sale-text">Sale</div>
							</c:if>
							<div class="a-box">
								<a href="DetailC?p_no=${s.p_no }"><img
									src="jsp/master/imgFolder/${s.p_img }"></a>
							</div>
							<div class="a-box">
								<a>${s.p_title }</a> <br> <a>${s.p_price } 원</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>