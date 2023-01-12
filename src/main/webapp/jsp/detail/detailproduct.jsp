<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail product</title>
</head>
<body>
	<form action="buyPageC">
		<div class="detail-container">
			<div class="detail-product-img-box">
					<img src="jsp/master/imgFolder/${product.p_img }">
			</div>
				<div class="detail-product-info">
					<div>
					${product.p_brand }
					</div>
				 	<div>
					${product.p_title }
					</div>
					<div>
					${product.p_price } 원
					</div>
				<div>
				<div class="detail-product-count-box">
					<table>
						<tr>
							<td><button type="button" onclick="">-</button></td>
							<td><input type="number" values="1"></td>
							<td><button type="button" onclick="">+</button></td>
						</tr>
					</table>
				</div>
				<div>
					<img src="jsp/master/imgFolder/${product.p_contents }">
				</div>
			</div>
	
			
				<button onclick="location.href='buyPageC'">구매</button>
				<button>삭제</button>
			</div>
		</div>
	</form>
</body>
</html>