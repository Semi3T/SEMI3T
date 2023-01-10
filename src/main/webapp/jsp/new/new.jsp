<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>new page</title>
</head>
<body>
	<div class="new-header">NEW POTION</div>
	<div class="product-container-new">
		<c:forEach var="p" items="${product }">
			<div class="product-box-new">
				<div class="product-ani">
					<div class="a-box-new">
						<a href="DetailC?p_no=${p.p_no }"><img
							src="jsp/master/imgFolder/${p.p_img }"></a>
					</div>

					<div class="a-box-new">
						<a href="DetailC?p_no=${p.p_no }">${p.p_brand }</a> <br>
						 <a href="DetailC?p_no=${p.p_no }">${p.p_title }</a> <br>
						  <a href="DetailC?p_no=${p.p_no }">${p.p_price } 원</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<br>
	<br>
	<div class="new-paging-box">
		<nav aria-label="Page navigation example">
 			 <ul class="pagination">
			    <li class="page-item"><a class="page-link" href="PagingNewC?p=1">First Page</a></li>
		<c:forEach var="page" begin="1" end="${pageCount }">
			    <li class="page-item"><a class="page-link" href="PagingNewC?p=${page }">${page }</a></li>
		</c:forEach>
			    <li class="page-item"><a class="page-link" href="PagingNewC?p=${pageCount }">End</a></li>
			</ul>
		</nav>
	</div>
</body>
</html>