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
<script>
	function modify_comment(no) {
		// 수정하기 버튼을 눌렀을 때, input이 입력 가능해야 함.

		//button1-${c.c_no } 삭제하기 
		//button2-${c.c_no } 수정하기

		// 사용 가능하게.
		let inputVal = $('#button2-' + no).val();

		if (inputVal == '수정하기') {
			if (confirm("댓글을 정말 수정하시겠습니까?")) {
				// input이 사용 가능해져야 한다.
				// comment-content-c_no

				// id : #, class = .
				$('#comment-content-' + no).attr("disabled", false);

				//let value = $('#button1-' + no).val()

				$('#button1-' + no).val('수정하기');
				$('#button2-' + no).val('취소하기');
			}
		} else {
			// 취소하기 일때.
			if (confirm("댓글 수정을 취소하시겠습니까?")) {

				$('#comment-content-' + no).attr("disabled", true);

				$('#button1-' + no).val('삭제하기');
				$('#button2-' + no).val('수정하기');
			}
		}
	}

	function modify_comment2(no) {

		let inputVal = $('#button1-' + no).val();

		let contentVal = $('#comment-content-' + no).val();

		if (inputVal == '수정하기') {
			// 수정하기.

			console.log("댓글 번호 : " + no);
			console.log("댓글 내용 : " + contentVal);
			if (confirm("댓글을 정말 수정하시겠습니까?")) {
				// 뷰에서 해결해주는 영역	
				// url - 어디로 갈지
				// type - GET(default), POST
				// data - 뭘 보낼지 ? & 
				// dataType - 응답을 뭘로 받을지.
				// contentType - 내가 뭘 보내는지
				// success - 응답받는데 성공했다면?
				// error - 응답받는데 실패했다면?

				$.ajax({
					url : "CommentController",
					data : {
						"c_no" : no,
						"c_content" : contentVal
					}
				}).done(function(response_code) {
					console.log(response_code);
					if (response_code == 1) {
						$('#comment-content-' + no).attr("disabled", true);
						alert("수정이 완료되었습니다.");

						// 버튼 이름 바꿔주기
						$('#button1-' + no).val('삭제하기');
						$('#button2-' + no).val('수정하기');
					} else {
						alert("수정이 실패하였습니다. 다시 시도해주세요.");
					}
				});

				// ajax => 비동기 통신 기술

			}
		} else {
			// 삭제하기
			if (confirm("댓글을 정말 삭제하시겠습니까?")) {

				$.ajax({
					url : "CommentController",
					data : {
						"c_no" : no
					}
				}).done(function(response) {
					console.log(response);
					// response == 1 ?
					// comment-container-${c.c_no }		
					// .remove() 요소 전체 삭제. 
					// .empty() 자식 요소만 삭제

					alert('삭제가 완료되었습니다.');
					$('#comment-container-' + no).remove();
				})
			}

		}
	}
</script>
<body>


	<form action="buyPageC">
		<div class="detail_area">

			<div class="detail_img">
				<img src="jsp/master/imgFolder/${product.p_img }">
			</div>

			<div class="detail_info">
				<div>
					<div class="detail-brand-name">
						<h4>${product.p_brand }</h4>
					</div>
					<div class="detail-product-name">
						<h1>${product.p_title }</h1>
					</div>
				</div>

				<div class="detail-product-price">
					<div>
						<fmt:formatNumber value="${product.p_price}" pattern="#,###" />
						원
					</div>
				</div>

				<div class="quantity">
					<div class="detail-quantity">
						<input type="hidden" name="sell_price"
							value="${ product.p_price }"> <input type="button"
							value=" - " name="minus" class="detail-minus"> <input
							type="button" name="amount" value="1" size="2" max=""
							class="detail-amount"> <input type="button" value=" + "
							name="add" class="detail-add">
					</div>

					<div class="tatal-area">
						<strong class="detail-text">총 상품금액: </strong> <input type="text"
							name="sum" size="11" readonly class="detail-total"><br>
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
					<td><input id="comment-content-${c.c_no }"
						value="${ c.c_content }" disabled="disabled"> <span>${ c.c_name }.
							${ c.c_date }</span></td>
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
						value="${ c.c_content }" disabled="disabled"> <span>${ c.c_name }.${ c.c_date }</span></td>
					<c:if test="${sessionScope.account.l_id eq c.c_id }">
						<td><input id="button1-${c.c_no }" type="button" value="삭제하기"
							class="btn btn-default" onclick="modify_comment2('${c.c_no}')" />
						</td>
						<td><input id="button2-${c.c_no }" type="button" value="수정하기"
							class="btn btn-default" onclick="modify_comment('${c.c_no}')" />
						</td>
					</c:if>
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


</body>
</html>