<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="qnareg" action="QnaRegC" method="post" enctype="multipart/form-data" onsubmit="return reqchk()">
		<div class="qna_detail_container">
			<div class="qna_detail_titlewrapper">
				<div class="titlewrapper_title"><input name="title" placeholder="제목을 입력하세요"></div>
			</div>
			<div class="qna_detail_info">
				<span>이미지 첨부 :&nbsp</span>
				<label class="btn btn-primary" for="imglebelid">업로드</label>
				<input id="imglabelid" type="file" name="img" style="display: none;">
			</div>
			<div class="qna_detail_contentwrapper">
				<textarea name="contents" placeholder="내용을 입력하세요"></textarea>
			</div>
			<div class="qna_update_confirmwrapper">
				<div>
					<strong>비밀번호 :&nbsp</strong><input id="passinput" name="pw"
					 type="password" pattern="[0-9]*" maxlength="4" placeholder="숫자만 입력가능(4자리)">
				</div>
				<div class="qna_reg_confirm_button">
					<button class="btn btn-primary" value="${q.no }" name="no">등록</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>