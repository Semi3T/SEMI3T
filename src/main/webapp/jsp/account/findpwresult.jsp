<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class = "find-form">

		<div>찾으신 비밀번호 값은 ${ requestScope.pwresult} 입니다.</div>

		<div>
			<button type="button" class="loginBtn"
				onclick="location.href='LoginC'">로그인화면으로</button>
		</div>
	</div>
</body>
</html>