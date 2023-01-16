<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="myPage-container">
		<div class="myPage-name-box">
			<h2>${sessionScope.account.l_name } 님, 환영합니다 </h2>
		</div>
		<div style="font-size: 20px;">
			<table id="myPage-table-box" class="table">
				<tr>
					<th class="myPage-th" scope="col">ID</th>
					<td class="mtPage-content-td">${sessionScope.account.l_id }</td>
				</tr>
				<tr>
					<th class="myPage-th" scope="col">Name</th>
					<td class="mtPage-content-td">${sessionScope.account.l_name }</td>
				</tr>
				<tr>
					<th class="myPage-th" scope="col">Gender</th>
					<td class="mtPage-content-td">${sessionScope.account.l_gender }</td>
				</tr>
				<tr>
					<th class="myPage-th" scope="col">PhoneNumber</th>
					<td class="mtPage-content-td">${sessionScope.account.l_phonenumber }</td>
				</tr>
				<tr>
					<th class="myPage-th" scope="col">Address</th>
					<td class="mtPage-content-td">${sessionScope.account.l_address }</td>
				</tr>
			</table>
		</div>
		
		<div class="myPage-button-box">
			<button id="mypage-update-button" onclick="location.href='UpdateInfoC'" value="">정보수정</button>
			<button id="mypage-delete-button" onclick="DeleteCustomer()">회원탈퇴</button>
		</div>
		
		
		
		
	</div>

</body>
</html>