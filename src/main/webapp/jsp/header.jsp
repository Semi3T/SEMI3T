<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
   <header>
      <div class="account_Btn">
        <a href="ProductRegC">제품 등록</a>
        <a href="RegC">회원가입</a>
        <a href="LoginC">로그인</a>
        <a href="MyPageC">마이페이지</a>
      </div>

<<<<<<< HEAD
<header>
		<div id="account_Btn">
<<<<<<< HEAD
		<jsp:include page="${loginPage }"></jsp:include>
=======
			<a href="ProductRegC">제품 등록</a>
>>>>>>> a3292ed48985a75c4fed14f85715ea960c61cf68
			<a href="RegC">회원가입</a>
			<a href="LoginC">로그인</a>
			<a href="MyPageC">마이페이지</a>
		</div>
		
		<div class="rogo_img">
			<a href="HC" >	
				<img src="img/Imported_Image.png" style="width:400px;">
			</a>
		</div>
		
		<div id="navi_Btn">
				<a href="">브랜드</a>
			 	<a href="">신제품</a>
			 	<a href="">세일제품</a>
			 	<a href="">Q&A</a>
		</div>
	</header>
=======
      <div class="rogo_img">
        <a href="HC">
          <img src="img/Imported_Image.png" style="width: 400px" />
        </a>
      </div>
>>>>>>> c04c191d2365a273ee73dd5a87d3ea3e2a11788a

      <div class="navi_Btn_container">
        <a class="navi_Btn" href="ProductC">브랜드</a>
        <a class="navi_Btn" href="#">신제품</a>
        <a class="navi_Btn" href="#">세일제품</a>
        <a class="navi_Btn" href="#">Q&A</a>
      </div>
    </header>
</body>
</html>