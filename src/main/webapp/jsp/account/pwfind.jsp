<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	Test(pw)

	<div class="card-body">

		<form name="pwfindscreen" action="findPw_result.jsp"
			class="form-signin" method="POST">

			<!-- 1. 입력란에 내용들을 입력하고, '비밀번호 찾기'라는 버튼 클릭하면 해당 내용들이 'pw_search()'라는 함수로

이동하게 됨 -->

			<!-- 2. 'pw_search()' 함수에 의해 과정처리하고 'findPw_result.jsp' 페이지로 이동 (일치할 경우) -->

			<input type="text" name="id" id="id" class="form-control"
				placeholder="아이디" required><br> <input type="text"
				name="name" id="name" class="form-control" placeholder="이름" required><BR>

			<input type="email" name="email" id="email" class="form-control"
				placeholder="이메일" required><br>

		
			<button id="btn-Yes" class="btn btn-lg btn-primary btn-block"
				type="submit" onClick="pw_search()">비밀번호 찾기</button>

		</form>

	</div>

</body>
</html>