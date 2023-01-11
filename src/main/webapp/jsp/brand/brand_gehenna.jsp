<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="brand_logo">
		<img src="img/brand/gehenna.png">
	</div>
	<div class="brand_list">
		<select onchange="if(this.value) location.href=this.value">
				<option value="brand_gehennaC?brand=gehenna">GEHENNA</option>
				<option value="brand_abydosC?brand=abydos">ABYDOS</option>
				<option value="brand_shan_hai_jingC?brand=shan_hai_jing">SHAN HAI JING</option>
				<option value="brand_trinityC?brand=trinity">BRAND TRINITY</option>
				<option value="brand_srtC?brand=srt">SRT</option>
				<option value="brand_ariusC?brand=arius">ARIUS </option>
		</select>	
		
	</div>
	
	<c:forEach var="b" items="${brand }">
		<div>
			<img src="jsp/master/imgFolder/${b.p_img }">
		</div>
		<div>
			<span>${b.p_title }</span>
		</div>
	</c:forEach>
</body>
</html>