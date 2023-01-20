<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="find-form">

		<div>
			찾으신 비밀번호 값은
			<div class="result-font">${fn:substring(requestScope.pwresult,0,fn:length(requestScope.pwresult)-4) }****</div>
			입니다.
		</div>



		<div>
			<div class="result-button-cover">
				<button type="button" class="loginBtn"
					onclick="location.href='LoginC'">로그인화면으로</button>
			</div>
		</div>
	</div>
</body>
</html>