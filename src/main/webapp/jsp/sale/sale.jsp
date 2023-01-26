<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sale page</title>
</head>
<body>
	<div class="sale-header">SALE POTION</div>
	
	<c:choose>
		<c:when test="${sessionScope.account eq null}">
		
		<div class="product-container-sale">
			<c:forEach var="p" items="${product }">
				<div class="product-box-sale">
					<div class="product-ani">
						<c:if test="${p.p_new eq '1'}">
							<div class="new-text">New</div>
						</c:if>
						<c:if test="${p.p_sale eq '1'}">
							<div class="sale-text">Sale</div>
						</c:if>
						<div class="a-box-sale">
							<a href="LoginC"><img
								src="img/product/19_img.png"></a>
						</div>
						<div class="a-box-sale">
							<a href="DetailC?p_no=${p.p_no }">${p.p_title }</a> <br> <a
								href="DetailC?p_no=${p.p_no }">${p.p_price - p.p_saleprice } 원</a>
	
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		
		</c:when>
			<c:otherwise>
				<div class="product-container-sale">
					<c:forEach var="p" items="${product }">
						<div class="product-box-sale">
							<div class="product-ani">
								<c:if test="${p.p_new eq '1'}">
									<div class="new-text">New</div>
								</c:if>
								<c:if test="${p.p_sale eq '1'}">
									<div class="sale-text">Sale</div>
								</c:if>
								<div class="a-box-sale">
									<a href="DetailC?p_no=${p.p_no }"> <img
										src="jsp/master/imgFolder/${p.p_img }"></a>
								</div>
								<div class="a-box-sale">
									<a href="DetailC?p_no=${p.p_no }">${p.p_title }</a> <br> <a
										href="DetailC?p_no=${p.p_no }">${p.p_price - p.p_saleprice } 원</a>
			
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
		</c:otherwise>
	</c:choose>
	
	<br>
	<br>
	<div class="sale-paging-box">
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item">
						<!-- p값이 널이 아니라면 나온다 -->
						<!-- p값이 1이 아니라면 나온다 -->
						<c:if test="${!empty param.p && curPageNo != 1}">
							<a class="page-link" href="PagingSaleC?p=1">First Page</a>
						</c:if>
				</li> 
				<c:forEach var="page" begin="1" end="${pageCount }">
					<li class="page-item">
							<c:choose>
							<c:when test="${page eq param.p}">
								<a class="page-link" href="PagingSaleC?p=${page }"
									style="background-color: #76d7ea;">${page }</a>
						</c:when> <c:otherwise>
							<a class="page-link" href="PagingSaleC?p=${page }">${page }</a>
						</c:otherwise>
					</c:choose></li>
				</c:forEach>
				<li class="page-item">
					<c:if test="${curPageNo != pageCount }">
						<a class="page-link" href="PagingSaleC?p=${pageCount }">End</a>
					</c:if>
				</li>
			</ul>
		</nav>
	</div>

</body>
</html>