<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="QnaUpdateC" method="post">
		<div class="qna_detail_container">
			<div class="qna_detail_titlewrapper">
				<div class="titlewrapper_no">${q.no }</div>
				<div class="titlewrapper_title"><input value="${q.title }" name="title"></div>
			</div>
			<div class="qna_detail_accountinfo">
				<div class="contentinfo_id">${q.id }</div>
				<div class="contentinfo_date">${q.date }</div>
			</div>
			<div class="qna_detail_contentwrapper">
				<div class="contentwrapper_content"><textarea name="contents">${q.contents }</textarea></div>
			</div>
			<div class="qna_detail_buttonwrapper">
				비밀번호 : <input id="passinput" name="pw" type="password" pattern="[0-9]*" maxlength="4" placeholder="숫자만 입력가능(4자리)" required="required">
				<button value="${q.no }" name="no">수정완료</button>
				<button onclick="history.back(-1)">취소</button>
			</div>
		</div>
	</form>
</body>
</html>