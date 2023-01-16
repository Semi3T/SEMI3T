<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update page</title>
</head>
<body>
	<form action="UpdateInfoC" method="post">
		<div style="margin-top: 80px;">
			<div style="font-size: 20px;">
				<table id="myPage-table-box" class="table">
					<tr>
						<th class="myPage-th" scope="col">ID</th>
						<td class="mtPage-content-td"><input name="id" value=""></td>
					</tr>
					<tr>
						<th class="myPage-th" scope="col">Name</th>
						<td class="mtPage-content-td"><input name="name" value=""></td>
					</tr>
					<tr>
						<th class="myPage-th" scope="col">Gender</th>
						<td class="mtPage-content-td"><input name="gender" value=""></td>
					</tr>
					<tr>
						<th class="myPage-th" scope="col">PhoneNumber</th>
						<td class="mtPage-content-td"><input name="phonenumber" value=""></td>
					</tr>
					<tr>
						<th class="myPage-th" scope="col">Address</th>
						<td class="mtPage-content-td"><textarea rows="" cols="" name="address" value=""></textarea> </td>
					</tr>
				</table>
		</div>
			
			<div class="myPage-button-box">
				<button>수정하기</button>
				<button onclick="history.go(-1)">뒤로가기</button>
			</div>
		</div>
	</form>
</body>
</html>