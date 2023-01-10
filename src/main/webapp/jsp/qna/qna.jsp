<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="qna" items="${q }" >
		<div class="qnalist_Container">
			<div class="qnalist" onclick="location.href='QnaDetailC?no=${qna.no}'">
				<div class="qnano">${qna.no }</div>
				<div class="qnatitle">${qna.title }</div>
				<div class="qnaid">${qna.id }</div>
			</div>
		</div>
	</c:forEach>
</body>
</html>