<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	Test(ID)
	<form name="idfindscreen" method="POST" action="IdfindC">
		<div class="search-title">
			<h3>휴대폰 본인확인</h3>
		</div>
		<section class="form-search">
			<div class="find-name">
				<label>이름</label> <input type="text" name="name" class="btn-name"
					placeholder="등록한 이름"> <br>
			</div>
			<div class="find-phone">
				<label>번호</label> <input type="text" name="phonenumber"
					class="btn-phone" placeholder="휴대폰번호를 '-'없이 입력">
			</div>
			<br>
		</section>
		<button>찾기</button>
	</form>

</body>
</html>