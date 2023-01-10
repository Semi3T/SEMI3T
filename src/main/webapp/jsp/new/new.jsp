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