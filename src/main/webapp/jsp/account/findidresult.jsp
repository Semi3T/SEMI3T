<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class = "result-container">
		<div>찾으신 아이디 값은 ${ requestScope.idresult} 입니다.</div>
		<div>
			<button type="button" class="loginBtn"
				onclick="location.href='LoginC'">로그인화면으로</button>
		</div>

	
	</div>
</body>
</html>