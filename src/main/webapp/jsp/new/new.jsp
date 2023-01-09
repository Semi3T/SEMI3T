<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>new page</title>
</head>
<body>

<div style="display: flex; border: 1px;">
	<c:forEach var="p" items="${product }">
		<div style="border: solid 1px red; width: 400px;">
			<a href="DetailC?p_no=${p.p_no }">
			<img style="width: 200px" src="jsp/master/imgFolder/${p.p_img }">
			<p>${p.p_title }</p>
			<p>${p.p_price }</p>
			</a>
		</div>
	</c:forEach>
	</div>

</body>
</html>