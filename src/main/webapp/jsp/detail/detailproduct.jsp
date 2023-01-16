<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail product</title>
<style type="text/css">
#tblAddCommnet, #tblListComment { width: 700px; margin: 15px auto; }
	
	#tblAddComment { margin-top: 30px; }
	#tblAddComment td:nth-child(1) { width: 600px; }
	#tblAddComment td:nth-child(2) { width: 100px; }
	
	#tblListComment td:nth-child(1) { width: 600px; }
	#tblListComment td:nth-child(2) { width: 100px; }
	
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
</head>
<body>

	
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
					<div >
						<fmt:formatNumber value="${product.p_price}" pattern="#,###" />원
					</div>
				</div>
				
				<div class="quantity">
					<div class="detail-quantity">
						<input type="hidden" name="sell_price" value="${ product.p_price }">
						<input type="button" value=" - " name="minus" class="detail-minus">
						<input type="button" name="amount" value="1" size="2" max="" class="detail-amount">
						<input type="button" value=" + " name="add" class="detail-add"> 	
					</div>
					
					<div class="total">
						<strong class="detail-text">총 상품금액: </strong>
						<input type="text" name="sum" size="11" readonly class="detail-total" ><br>
					</div>
				</div>
				
					<div class="detail_button">
						<button type="button" >장바구니</button>
						<button>구매하기</button>
				  	</div>
			</div>
		</div>
			
			
	<div>
		<img src="jsp/master/imgFolder/${product.p_contents}">

	</div>
	
	<script type="text/javascript" src="js/detail/detail.js"></script>
	
	
	<!-- 뎃글 -->
	
	<div>

	<table id="tblListComment" class="table table-bordered">
	
		<c:if test="${ comment.size() == 0 }">
			<tr>
				<td colspan="2">댓글이 없습니다.</td>
			</tr>
		</c:if> 
		
		<c:forEach items="${ comment }" var="c" > 
			<tr>
				<td>
					 ${ c.c_content }
					 <span>${ c.c_name }. ${ c.c_date }</span>
				</td>
				<td>
					<input type="button" value="삭제하기" class="btn btn-default" 
						onclick="location.href='#'"/>
				</td>
			</tr>
	 	</c:forEach>
	 		
	</table>
	
		<form action="DetailC" method="post">
			<table id="tblAddComment" class="table table-bordered">
				<tr>
					<td><input type="text" name="c_content" id="c_content" class="form-control" required placeholder="댓글을 작성하세요. "/></td>
					<td><input type="submit" value="댓글쓰기" class="btn btn-primary" /></td>
				</tr>
			</table>	
			<input type="hidden" name="p_no" value="${ product.p_no}">
		</form>
	</div>


</body>
</html>