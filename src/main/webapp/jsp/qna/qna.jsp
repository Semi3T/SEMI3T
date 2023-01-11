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
	<div class="new-paging-box" style="justify-content: space-between;">
	<div></div>
		<nav aria-label="Page navigation example">
 			 <ul class="pagination">
			    <li class="page-item"><a class="page-link" href="QnAC?p=1">First Page</a></li>
		<c:forEach var="page" begin="1" end="${pageCount }">
			    <li class="page-item"><a class="page-link" href="QnAC?p=${page }">${page }</a></li>
		</c:forEach>
			    <li class="page-item"><a class="page-link" href="QnAC?p=${pageCount }">End</a></li>
			</ul>
		</nav>
	<button style="float: right; margin-bottom: auto" onclick="location.href='QnaRegC'">글쓰기</button>
	</div>
</body>
</html>