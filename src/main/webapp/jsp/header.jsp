<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>header</title>
  </head>
  <body>
    <header>
      <div class="account_Btn">
	    <c:choose>
	    <c:when test="${sessionScope.account.l_id == 'master' }">
	    	<h5> ${sessionScope.account.l_name } 님 </h5>
	    	<a href="ProductC">제품등록</a>
	    	<a href="LogOutC">로그아웃</a>      
	        <a href="MyPageC">마이페이지</a>
	    </c:when>
		<c:when test="${sessionScope.account ne null }">
	    	<h5> ${sessionScope.account.l_name } 님 </h5>
			<a href="LogOutC">로그아웃</a>      
	        <a href="MyPageC">마이페이지</a>
		</c:when>	    
		<c:otherwise>
	        <a href="RegC">회원가입</a>
	        <a href="LoginC">로그인</a>
	        <a href="MyPageC">마이페이지</a>
		</c:otherwise>
	    </c:choose>
      </div>
	
      <div class="rogo_img">
        <a href="HC">
          <img src="img/mainlogoimg/Imported_Image.png" style="width: 400px" />
        </a>
      </div>
      <form  action="ProductSearchC" class="search-area">
		  <div class="product-search">
		  	<input class="keyword" type="text" name="keyWord" placeholder="검색어 입력"> 
		  	<input class="search-button" type="image" onclick="searchCheck(form)" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"/>
		  </div>
	  </form>
      <div class="navi_Btn_container">
        <div id="navi_brand">
          <a class="navi_Btn" href="BrandC">BRAND</a>
          <div class="dropdown-content">
            <a href="brand_ariusC?brand=arius"> ARIUS</a>
            <a href="brand_srtC?brand=srt"> SRT</a>
            <a href="brand_gehennaC?brand=gehenna"> GEHENNA</a>
            <a href="brand_abydosC?brand=abydos"> ABYDOS</a>
            <a href="brand_shan_hai_jingC?brand=shan_hai_jing"> SHAN HAI JING</a>
            <a href="brand_trinityC?brand=trinity">TRINITY</a>
          </div>
        </div>

        <a class="navi_Btn" href="NewPotionC">신제품</a>
        <a class="navi_Btn" href="SalePotionC">세일제품</a>
        <a class="navi_Btn" href="QnAC?p=1">Q&A</a>
      </div>
    </header>
  </body>
</html>
