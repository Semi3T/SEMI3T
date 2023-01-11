<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form action="LoginC" method="post">
		<div class="login-page">
			<div class="form">
				<form class="login-form">
					<input type="text" id="id" name="id" placeholder="아이디" /> <input
						type="password" id="pw" name="pw" placeholder="비밀번호" />
					<button>login</button>
					<p class="message">
						회원이 아니신가요??
						<button type="button" class="loginBtn"
							onclick="location.href='RegC'">회원가입</button>
				</form>

			</div>
		</div>
	</form>


</body>
</html>