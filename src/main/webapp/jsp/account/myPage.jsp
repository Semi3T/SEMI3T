<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	MY PAGE

	<div class="myPage">

		<div class="mypage1">
			<div class="mypage2">Name</div>
			<div class="mypage2">${sessionScope.account.l_name }</div>
		</div>



		<div class="mypage1">
			<div class="mypage2">ID</div>
			<div class="mypage2">${sessionScope.account.l_id }</div>
		</div>


		<div class="mypage1">
			<div class="mypage2">PW</div>
			<div class="mypage2">${sessionScope.account.l_pw }</div>
		</div>


		<div class="mypage1">
			<div class="mypage2">성별</div>
			<div class="mypage2">${sessionScope.account.l_gender }</div>
		</div>

		<div class="mypage1">
			<div class="mypage2">전화번호</div>
			<div class="mypage2">${sessionScope.account.l_phonenumber }</div>
		</div>


		<div class="mypage1">
			<div class="mypage2">생년월일</div>
			<div class="mypage2">${sessionScope.account.l_birthday }</div>
		</div>



		<div class="mypage1">
			<div class="mypage2">주소</div>
			<div class="mypage2">${sessionScope.account.l_address }</div>
		</div>









	</div>

</body>
</html>