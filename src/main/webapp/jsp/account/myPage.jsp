<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
</head>
<body>




	<div class="myPage">
		<div class="myPage-title">MY PAGE</div>
		<div class="mypage1">
			<div class="mypage2"> <i class="fa-solid fa-user"></i> 이름 : ${sessionScope.account.l_name }</div>
		</div>



		<div class="mypage1">
			<div class="mypage2">ID : ${sessionScope.account.l_id }</div>
		</div>



		<div class="mypage1">
			<div class="mypage2">성별 : ${sessionScope.account.l_gender }</div>
		</div>

		<div class="mypage1">
			<div class="mypage2">전화번호 :
				${sessionScope.account.l_phonenumber }</div>
		</div>


		<div class="mypage1">
			<div class="mypage2">생년월일 : ${sessionScope.account.l_birthday }</div>
		</div>



		<div class="mypage1">
			<div class="mypage2">주소 : ${sessionScope.account.l_address }</div>
		</div>









	</div>

</body>
</html>