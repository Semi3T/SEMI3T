<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail product</title>
</head>
<body>
	<form action="">
	<div class="detail-container">
		<div>
			<img src="${p_img }">
		</div>
		<div>
			<div>
				<h3>${p_brand }</h3>
				<h1>${p_title }</h1>
			</div>				
			<div>
				<h1>${p_price } 원</h1>
			</div>
			<div>
				<button>-</button>	
				<input type="number" values="1">
				<button>+</button>	
			</div>
		</div>
	</div>
	</form>
</body>
</html>