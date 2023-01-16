<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="qna_detail_container">
		<div class="qna_detail_titlewrapper">
			<div class="titlewrapper_no">${q.no }</div>
			<div class="titlewrapper_title">${q.title }</div>
		</div>
		<div class="qna_detail_accountinfo">
			<div class="contentinfo_id">${q.id }</div>
			<div class="contentinfo_date">${q.date }</div>
		</div>
		<div class="qna_detail_contentwrapper">
			<img src="jsp/qna/imgFolder/${q.img }">
			<div class="contentwrapper_content">${q.contents }</div>
		</div>
		<div class="qna_detail_buttonwrapper">
			<button onclick="location.href='QnaUpdateC?no=${q.no}'">수정</button>
			<button>삭제</button>
		</div>
	</div>
	<jsp:include page="qnareply.jsp"></jsp:include>
</body>
</html>