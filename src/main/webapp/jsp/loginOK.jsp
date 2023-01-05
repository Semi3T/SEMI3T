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
${sessionScope.a_id } (${sessionScope.account.a_name })님 안녕하세요</td>
</tr>


<tr>
<td>
<button class="loginBtn" onclick="location.href='MyPageAccountC?id=${sessionScope.a_id }'">MYpage</button>
<button class="loginBtn" onclick="location.href='LoginController'">로그아웃</button>
</td>
</tr>


</table>


</body>
</html>