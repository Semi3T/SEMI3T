<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form action="LoginC" method="post" name = "Login" onsubmit="return login_Check()">
		<div class="login-page">
			<div class="login-form">
				<input type="text" id="id" name="id" placeholder="아이디" /> <input
					type="password" id="pw" name="pw" placeholder="비밀번호" />
				<button>login</button>
			<div class = "error-message"> ${r } </div>
				<p class="message">
					회원이 아니신가요??</p>
					<button type="button" class="loginBtn"
						onclick="location.href='RegC'">회원가입</button>
						<p class="message">
						혹시 기억나지않으신가요?
						</p>
						<button type="button" class="loginBtn"
						onclick="location.href='IdfindC'">아이디 찾기</button>
						<button type="button" class="loginBtn"
						onclick="location.href='PwfindC'">비밀번호 찾기</button>
						
			</div>
		</div>
	</form>


</body>
</html>