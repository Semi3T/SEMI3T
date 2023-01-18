<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <div class="qnaboard_container">
      <div class="qnaboard_title">
        <strong>QnA 게시판</strong>
        <p>제품에 관련된 질문 및 각종 문의사항에 대하여 작성하실 수 있습니다.</p>
      </div>
      <div class="qnalist_container">
	        <div class="qnalist1">
	          <div class="qnano">번호</div>
	          <div class="qnatitle" style="text-align: center;">제목</div>
	          <div class="qnaid">작성자</div>
	          <div class="qnadate">작성일</div>
	        </div>
	      <c:forEach var="qna" items="${q }">
	          <div class="qnalist2" onclick="location.href='QnaPassckC?no=${qna.no}'">
	            <div class="qnano">${qna.no }</div>
	            <div class="qnatitle">${qna.title }</div>
	            <div class="qnaid">${qna.id }</div>
	            <div class="qnadate">${qna.date }</div>
	          </div>
	      </c:forEach>
    	</div>
    </div>
    <div class="new-paging-box" style="justify-content: space-between">
      <div></div>
      <nav aria-label="Page navigation example">
        <ul class="pagination">
          <li class="page-item">
            <a class="page-link" href="QnAC?p=1">First Page</a>
          </li>
          <c:forEach var="page" begin="1" end="${pageCount }">
            <li class="page-item">
              <a class="page-link" href="QnAC?p=${page }">${page }</a>
            </li>
          </c:forEach>
          <li class="page-item">
            <a class="page-link" href="QnAC?p=${pageCount }">End</a>
          </li>
        </ul>
      </nav>
      <button
        style="float: right; margin-bottom: auto"
        onclick="location.href='QnaRegC'"
        class="btn btn-primary">
        글쓰기
      </button>
    </div>
  </body>
</html>
