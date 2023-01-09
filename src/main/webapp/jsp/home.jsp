<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>home jsp</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
  ${r }
    <div>
      <div
        id="carouselExampleControls"
        class="carousel slide"
        data-bs-ride="carousel"
      >
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img
              class="d-block w-100"
              src="https://source.unsplash.com/user/erondu/1200x500"
              alt="..."
            />
          </div>
          <div class="carousel-item">
            <img
              class="d-block w-100"
              src="https://source.unsplash.com/collection/190727/1200x500"
              alt="..."
            />
          </div>
          <div class="carousel-item">
            <img
              class="d-block w-100"
              src="https://source.unsplash.com/WLUHO9A_xik/1200x500"
              alt="..."
            />
          </div>
        </div>
        <button
          class="carousel-control-prev"
          type="button"
          data-bs-target="#carouselExampleControls"
          data-bs-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button
          class="carousel-control-next"
          type="button"
          data-bs-target="#carouselExampleControls"
          data-bs-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>
    
    <%-- <c:set var="p0" value="0" />
    <c:set var="p3" value="3" /> --%>
    <div style="display: flex; border: 1px;">
    
	<c:forEach var="p" items="${product }">
		<c:if test="${p0%p3==0}">
		<div style="border: solid 1px black; width: 400px;">
			<a href="DetailC?p_no=${p.p_no }">
			<img style="width: 200px" src="jsp/master/imgFolder/${p.p_img }">
			<p>${p.p_title }</p>
			<p>${p.p_price }</p>
			</a>
		</div>
		</c:if>
		<c:if test="${p0%p3==p3-1 }"></c:if>
	</c:forEach>
	</div>
  </body>
</html>
