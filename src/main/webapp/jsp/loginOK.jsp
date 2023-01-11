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
${cookie.l_id.value } (${cookie.account.l_name.value })님 안녕하세요</td>
</tr>


<tr>
<td>
<button class="loginBtn" onclick="location.href='MyPageAccountC?id=${cookie.l_id.value }'">마이페이지</button>
<button class="loginBtn" onclick="location.href='LogOutC'">로그아웃</button>
<button class="loginBtn" onclick="location.href='HC'">메인화면으로</button>
</td>
</tr>


</table>

</body>
</html>