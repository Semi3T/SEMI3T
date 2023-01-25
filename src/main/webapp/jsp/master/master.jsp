<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>master product</title>
</head>
<body>
	<form action="ProductC" method="post" enctype="multipart/form-data">
		타이틀 이미지 : <input name="tilte_img" type="file"><br>
		브랜드 명    : <select name="brand">
							<option value="shan_hai_jing">SHAN HAI JING</option>
							<option value="trinity">TRINITY</option>
							<option value="abydos">ABYDOS</option>
							<option value="gehenna">GEHENNA</option>
							<option value="srt">SRT</option>
							<option value="arius">ARIUS </option>
						</select>	<br>
							
	    제품 제목		: <input name="title"><br>
		<hr>
			<label><input name="p_new" type="radio" value="1">신제품 YES</label>
			<label><input name="p_new" type="radio" value="0">신제품 NO</label>
		<hr>
			<label><input name="sale" type="radio" value="0">세일 NO</label>
			<label><input name="sale" type="radio" value="1">세일 YES</label>
			<label><input type="number" name="saleprice">원</label>
		<hr>
		상세페이지 이미지 : 	<input name="content_img" type="file"><br>
		가격			 :	<input name="price"><br>
		<button>등록</button>
	</form>
</body>
</html>