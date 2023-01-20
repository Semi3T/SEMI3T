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
				<div class="titlewrapper_title"><input value="${q.title }" name="title"></div>
			</div>
			<div class="qna_detail_info">
				<div class="qna_contentinfo"><Strong>번호</Strong>${q.no }</div>
				<div class="qna_contentinfo"><Strong>작성자</Strong>${q.id }</div>
				<div class="qna_contentinfo_date"><Strong>작성일</Strong>${q.date }</div>
			</div>
			<div class="qna_detail_contentwrapper">
				<textarea name="contents">${q.contents }</textarea>
			</div>
			<div class="qna_update_confirmwrapper">
				<div>
					<strong>비밀번호 :&nbsp</strong><input id="passinput" name="pw" type="password" pattern="[0-9]*" maxlength="4" placeholder="숫자만 입력가능(4자리)" required="required">
				</div>
				<div class="qna_update_confirm_button">
					<button class="btn btn-primary" value="${q.no }" name="no">수정완료</button>
					<button class="btn btn-primary" onclick="location.href=QnaDetailC">취소</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>