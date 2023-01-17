<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<div>
		<table id="tblListComment" class="table table-bordered">
			<c:if test="${qnareply.size() == 0 }">
				<tr>
					<td colspan="2">답변을 기다려주세요.</td>
				</tr>
			</c:if>
			<c:forEach items="${qnareply }" var="q" > 
				<tr>
					<td>
						 ${q.r_content }
						 <span>${ q.r_name }. ${ q.r_date }</span>
					</td>
					<td>
						<input type="button" value="삭제하기" class="btn btn-default" 
							onclick="location.href='QnaReplyDeleteC?r_no=${q.r_no}&&no=${q.q_no }'"/>
					</td>
				</tr>
		 	</c:forEach>
		</table>
		<form action="QnaReplyC" method="get">
			<table id="tblAddComment" class="table table-bordered">
				<tr>
					<td><input type="text" name="r_content" id="r_content" class="form-control" required placeholder="내용을 입력하세요. "/></td>
					<td><input type="submit" value="등록" class="btn btn-primary" /></td>
				</tr>
			</table>	
			<input type="hidden" name="no" value="${q.no }">
		</form>
	</div>
</body>
</html>