<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="ProductRegC" method="post" enctype="multipart/form-data">
		타이틀 이미지 : <input name="tilte_img" type="file"><br>
		브랜드 명    : <input name="brand"><br>
		제품 제목    : <input name="title"><br>
		<hr>
			<label><input name="p_new" type="radio" value="1">신제품 YES</label>
			<label><input name="p_new" type="radio" value="0">신제품 NO</label>
		<hr>
			<label><input name="sale" type="radio" value="1">세일 YES</label>
			<label><input name="sale" type="radio" value="0">세일 NO</label>
		<hr>
		상세페이지 이미지 : 	<input name="content_img" type="file"><br>
		상품 제고 개수	 : 	<input name="stock"><br>
		가격			 :	<input name="price"><br>
		like         :	<input name="like" value="0"><br>
		<button>등록</button>
	</form>

</body>
</html>