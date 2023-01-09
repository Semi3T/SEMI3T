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
		<div>
			<img src="jsp/master/imgFolder/${product.p_img }">
		</div>
		<div>
			<div>
				<h3>${product.p_brand }</h3>
				<h1>${product.p_title }</h1>
			</div>				
			<div>
				<h1>${product.p_price } 원</h1>
			</div>
			<div>
				<button>-</button>	
				<input type="number" values="1">
				<button>+</button>	
			</div>
			<div>
				<img src="jsp/master/imgFolder/${product.p_contents }">
			</div>
		</div>

		<div>
			<button>구매</button>
			<button>삭제</button>
		</div>
	</form>
</body>
</html>