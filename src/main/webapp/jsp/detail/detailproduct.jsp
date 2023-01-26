<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail product</title>
<style type="text/css">
#tblAddCommnet, #tblListComment {
	width: 700px;
	margin: 15px auto;
}

#tblAddComment {
	margin-top: 30px;
}

#tblAddComment td:nth-child(1) {
	width: 600px;
}

#tblAddComment td:nth-child(2) {
	width: 100px;
}

#tblListComment td:nth-child(1) {
	width: 600px;
}

#tblListComment td:nth-child(2) {
	width: 100px;
}

#tblListComment td {
	position: relative;
	left: 0;
	top: 0;
}

#tblListComment td span {
	position: absolute;
	right: 10px;
	bottom: 5px;
	color: #AAA;
	font-size: 11px;
}
</style>
<body>


	<form action="BuyPageC">
		<div class="detail_area">

			<div class="detail_img">
				<input type="hidden" name="img" value="${product.p_img }">
				<img src="jsp/master/imgFolder/${product.p_img }">
			</div>

			<div class="detail_info">
				<div>
					<div class="detail-brand-name">
						<h4>${product.p_brand }</h4>
					</div>
					<div class="detail-product-name">
						
						<h1>${product.p_title }</h1>
						<input type="hidden" name="title" value="${product.p_title }">
					</div>
				</div>

				<div class="detail-product-price">
					<div>
						<c:choose>
							<c:when test="${product.p_sale eq 0 }">
							<fmt:formatNumber value="${product.p_price}" pattern="#,###" /> 원
							</c:when>
							<c:when test="${product.p_sale eq 1}">
							<div style="text-decoration: line-through; opacity: 0.6; font-size: 18pt;">
							<fmt:formatNumber value="${product.p_price}" pattern="#,###" /> 원
							</div>
							<fmt:formatNumber value="${product.p_price - product.p_saleprice}" pattern="#,###" /> 원
							</c:when>
						</c:choose>
					</div>
				</div>

				<div class="quantity">
					<div class="detail-quantity">
						<input type="hidden" name="sell_price" value="${ product.p_price - product.p_saleprice}">
						 <input type="button" value=" - " name="minus" class="detail-minus">
						  <input type="button" name="amount" value="1" size="2" max="" class="detail-amount">
						   <input type="button" value=" + " name="add" class="detail-add">
						
						   	<input type="hidden" name="sale_price" value="${product.p_saleprice }">
						   
					</div>

					<div class="tatal-area">
						<strong class="detail-text">총 상품금액: </strong> 
						<input type="text" name="sum" size="11" readonly class="detail-total">
						<input type="hidden" name="final_amount" value="1">
						 
						<br>
					</div>
				</div>

				<div class="detail-button">
					<button>구매하기</button>
				</div>
			</div>

		</div>
	</form>
	<hr>

	<div>
		<img src="jsp/master/imgFolder/${product.p_contents}">

	</div>


	<!-- 뎃글 -->

	<div>

		<table id="tblListComment" class="table table-bordered">

			<c:if test="${ comment.size() == 0 }">
				<tr>
					<td colspan="2">댓글이 없습니다.</td>
				</tr>
			</c:if>

			<c:forEach items="${ comment }" var="c">
				<tr id="comment-container-${c.c_no }">
					<td><input class="comment-contents" id="comment-content-${c.c_no }" value="${ c.c_content }" disabled="disabled">
						 <span>${ c.c_name }.${ c.c_date }</span>
					</td>
					<c:choose>
						<c:when test="${sessionScope.account.l_id eq c.c_id }">
							<td><input id="button1-${c.c_no }" type="button" value="삭제하기"
								class="btn btn-default" onclick="modify_comment2('${c.c_no}')" />
							</td>
							<td>
								<input id="button2-${c.c_no }" type="button" value="수정하기"
								class="btn btn-default" onclick="modify_comment('${c.c_no}')"/>
							</td>
						</c:when>
						<c:when test="${sessionScope.account.l_id eq 'master' }">
							<td><input id="button1-${c.c_no }" type="button" value="삭제하기"
								class="btn btn-default" onclick="modify_comment2('${c.c_no}')" />
							</td>
							<td>
								<input id="button2-${c.c_no }" type="button" value="수정하기"
								class="btn btn-default" onclick="modify_comment('${c.c_no}')"/>
							</td>
						</c:when>
					</c:choose>
				</tr>
			</c:forEach>

		</table>


		<c:choose>
			<c:when test="${sessionScope.account eq null}">
				<form action="LoginC" method="get">
					<table id="tblAddComment" class="table table-bordered">
						<tr>
							<td><input type="text" name="c_content" id="c_content"
								class="form-control" readonly placeholder="로그인을 해주세요" /></td>
							<td><input type="submit" value="로그인" class="btn btn-primary" /></td>
						</tr>
					</table>
				</form>
			</c:when>
			<c:otherwise>
				<form action="DetailC" method="post">
					<table id="tblAddComment" class="table table-bordered">
						<tr>
							<td><input type="text" name="c_content" id="c_content"
								class="form-control" required placeholder="댓글을 작성하세요. " /></td>
							<td><input value="댓글쓰기" type="submit"
								id="comment-create-input" class="btn btn-primary" /></td>
						</tr>
					</table>
					<input type="hidden" name="user_id"
						value="${sessionScope.account.l_id }"> <input
						type="hidden" name="p_no" value="${ product.p_no}">
				</form>

			</c:otherwise>
		</c:choose>
	</div>

<script type="text/javascript" src="js/detail/detail.js"></script>
</body>
</html>