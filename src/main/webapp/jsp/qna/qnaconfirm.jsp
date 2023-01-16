<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="QnaPassckC" method="post">
		<h3>비밀번호 입력</h3>
		<input name="pw" type="password">
		<button name="no" value="${param.no }">확인</button>
		${invalid }
	</form>
</body>
</html>