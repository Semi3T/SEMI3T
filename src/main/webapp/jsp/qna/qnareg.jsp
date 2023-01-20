<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="QnaRegC" method="post" enctype="multipart/form-data">
		<div class="qna_detail_container">
			<div class="qna_detail_titlewrapper">
				<div class="titlewrapper_title"><input value="${q.title }" name="title"></div>
			</div>
			<div class="qna_detail_info">
				<input>
			</div>
			<div class="qna_detail_contentwrapper">
				<textarea name="contents">${q.contents }</textarea>
			</div>
			<div class="qna_update_confirmwrapper">
				<div>
					<strong>비밀번호 :&nbsp</strong><input id="passinput" name="pw" type="password" pattern="[0-9]*" maxlength="4" placeholder="숫자만 입력가능(4자리)">
				</div>
				<div class="qna_update_confirm_button">
					<button class="btn btn-primary" value="${q.no }" name="no">등록</button>
				</div>
			</div>
		</div>
			<!-- <input name="title" placeholder="제목을 입력하세요."><br>
			이미지 첨부 : <input name="img" type="file"><br>
			<textarea name="contents" placeholder="내용을 입력하세요"></textarea>
			<div class="qna_detail_buttonwrapper">
				비밀번호 : <input id="passinput" name="pw" type="password" pattern="[0-9]*" maxlength="4" placeholder="숫자만 입력가능(4자리)" required="required">
				<button>등록</button>
				<button type="button" onclick="history.back(-1)">취소</button>
			</div> -->
	</form>
</body>
</html>