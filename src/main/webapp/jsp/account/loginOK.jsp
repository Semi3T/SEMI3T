<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table id ="loginAreaTbl">
<tr>
<td>

${r } </td>
</tr>
<tr>

<td>

${sessionScope.l_id } (${sessionScope.account.l_name })님 안녕하세요</td>
</tr>


<tr>
<td>
<button class="loginBtn" onclick="location.href='MyPageAccountC?id=${sessionScope.l_id }'">마이페이지</button>
<button class="loginBtn" onclick="location.href='LogOutC'">로그아웃</button>
<button class="loginBtn" onclick="location.href='HC'">메인화면으로</button>
</td>
</tr>


</table>

</body>
</html>