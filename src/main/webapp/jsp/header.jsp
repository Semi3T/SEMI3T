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

<header>
		<div id="account_Btn">
		<jsp:include page="${loginPage }"></jsp:include>
			<a href="ProductRegC">제품 등록</a>
			<a href="RegC">회원가입</a>
			<a href="LoginC">로그인</a>
			<a href="MyPageC">마이페이지</a>
		</div>
		
	
      <div class="rogo_img">
        <a href="HC">
          <img src="img/Imported_Image.png" style="width: 400px" />
        </a>
      </div>

      
      <div class="navi_Btn_container">
 	   	 
 	   	<div id="navi_brand" >
        <a class="navi_Btn" href="ProductC">브랜드</a>
        <div class="dropdown-content">
          <a href="#"> 브랜드1</a>
          <a href="#"> 브랜드2</a>
          <a href="#"> 브랜드3</a>
          <a href="#"> 브랜4</a>
          <a href="#"> 브랜드5</a>
        </div>
 	   	</div>  		
        
        <a class="navi_Btn" href="NewPotionC">신제품</a>
        <a class="navi_Btn" href="SalePotionC">세일제품</a>
        <a class="navi_Btn" href="#">Q&A</a>
      </div>
      
      
    </header>
</body>
</html>