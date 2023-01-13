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
			누구누구님 안녕하세요
		</div>
		<div style="font-size: 20px;">
			<table id="myPage-table-box" class="table">
				<tr>
					<th class="myPage-th" scope="col">ID</th>
					<td class="mtPage-content-td">master</td>
				</tr>
				<tr>
					<th class="myPage-th" scope="col">Name</th>
					<td class="mtPage-content-td">박영웅</td>
				</tr>
				<tr>
					<th class="myPage-th" scope="col">Gender</th>
					<td class="mtPage-content-td">남자</td>
				</tr>
				<tr>
					<th class="myPage-th" scope="col">PhoneNumber</th>
					<td class="mtPage-content-td">010-1111-2222</td>
				</tr>
				<tr>
					<th class="myPage-th" scope="col">Address</th>
					<td class="mtPage-content-td">서울 종로구 솔데스크 802호 이렇게 길게 쓰는 이유는 길게 나왔을때를 대비해서 써놓은것 이것보다 좀 더 길게 나올수도 있으니까 적어봄 ㅋ</td>
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