<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update page</title>
</head>
<body>
	<form action="UpdateInfoC" method="post" onsubmit="return UpdateCustomer()" name="Uc">
	<div class="myPage-container">
				<div style="margin-top: 80px;">
					<div style="font-size: 20px;">
						<table id="myPage-table-box" class="table">
							<tr>
								<th class="myPage-th" scope="col">ID</th>
								<td class="mtPage-content-td"><input disabled="disabled" name="id" value="${sessionScope.account.l_id }"></td>
							</tr>
							<tr>
								<th class="myPage-th" scope="col">PW</th>
								<td class="mtPage-content-td"><input id="uc-pw" name="pw" value="${sessionScope.account.l_pw }"></td>
							</tr>
							<tr>
								<th class="myPage-th" scope="col">Name</th>
								<td class="mtPage-content-td"><input id="uc-name" name="name" value="${sessionScope.account.l_name }"></td>
							</tr>
							<tr>
								<th class="myPage-th" scope="col">PhoneNumber</th>
								<td class="mtPage-content-td"><input id="uc-phonenumber" name="phonenumber" maxlength="11" placeholder="ex) 01011112222" value="${sessionScope.account.l_phonenumber }"></td>
							</tr>
							<tr>
								<th class="myPage-th" scope="col">Address</th>
								<td class="mtPage-content-td"><input id="uc-address" name="address" value="${sessionScope.account.l_address }"> </td>
							</tr>
						</table>
				</div>
					
					<div class="myPage-button-box">
						<button>수정하기</button>
						<button onclick="history.go(-1)">뒤로가기</button>
					</div>
				</div>
			</div>
	</form>
</body>
</html>