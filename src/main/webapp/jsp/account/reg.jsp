<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="validcheck.js"></script>
<script type="text/javascript" src="valueCheck.js"></script>
</head>
<body>
	<form action="RegC" method="post" onsubmit="return checkAll()"
		class="reg-container">



		<div class="reg-items">
			<div class="reg-item1">ID</div>
			<div class="reg-item2">
				<input name="id" class="reg-textInput" type="text">
			</div>
		</div>


		<div class="reg-items">
			<div class="reg-item1">비밀번호</div>
			<div class="reg-item2">
				<input name="pw" class="reg-data" type="password">
			</div>
		</div>
		
		<div class="reg-items">
			<div class="reg-item1">비밀번호 확인</div>
			<div class="reg-item2">
				<input name="pw2" class="reg-data" type="password">
			</div>
		</div>

		<div class="reg-items">
			<div class="reg-item1">이름</div>
			<div class="reg-item2">
				<input name="login_name" class="reg-data" type="text">
			</div>
		</div>


		<div class="reg-items">
			<div class="reg-item1">전화번호</div>
			<div class="reg-item2">
				<input type="text" name="phonenumber" placeholder="핸드폰번호 입력"
					maxlength="11" />
			</div>
		</div>


		<div class="reg-items">
			<div class="reg-item1">생년월일</div>
			<div class="reg-item2">
				<input type="date" name="birthday" class="reg-data">
			</div>
		</div>


		<div class="reg-items">
			<div class="reg-item1">주소</div>
			<div class="reg-item2">
				<input type="text" id="address" name="address" class="reg-data">
			</div>
		</div>


		<div class="items">
			<div class="item1"></div>
			<div class="item2">

				<div class="mb-3">
					<label for="userSex" class="reg-form-label">성별</label>
					<div
						class="reg-form_toggle row-vh d-flex flex-row justify-content-between">
						<div class="reg-form_radio_btn radio_male">
							<input id="radio-1" type="radio" name="gender" value="남" checked>
							<label for="radio-1">남성</label>
						</div>

						<div class="reg-form_radio_btn">
							<input id="radio-2" type="radio" name="gender" value="여">
							<label for="radio-2">여성</label>
						</div>
					</div>
				</div>


			</div>
		</div>




		<div class="items item3">
			<div class="reg-button">
				<button>회원가입</button>
			</div>
		</div>




	</form>








</body>
</html>