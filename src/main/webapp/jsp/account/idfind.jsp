<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form name="findscreen" method="POST" action="IdfindC" onsubmit="return id_search()">
		<div class = "find-page">
			<div class="find-form">
<div class = "find-pagetitle">아이디 찾기</div>
				<section class="form-search">
					<div class="find-name">
						<label>이름</label> <input type="text" name="name" class="btn-name"
							placeholder="등록한 이름"> <br>
					</div>
					<div class="find-phone">
						<label>전화번호</label> <input type="text" name="phonenumber"
							class="btn-phone" placeholder="휴대폰번호를 '-'없이 입력">
					</div>
					<br>
						<div class = "error-message"> ${r } </div>
				</section>
				<button>찾기</button>
			</div>
		</div>
	</form>

</body>
</html>