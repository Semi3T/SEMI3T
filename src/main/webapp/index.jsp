<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PolyPotion indexPage</title>
<link rel="stylesheet" href="css/index/index.css">
<link rel="stylesheet" href="css/qna/qna.css">
<link rel="stylesheet" href="css/brand/brand.css">
<link rel="stylesheet" href="css/new/new.css">
<link rel="stylesheet" href="css/sale/sale.css">
<link rel="stylesheet" href="css/account/login.css">
<link rel="stylesheet" href="css/account/reg.css">
<link rel="stylesheet" href="css/account/myPage.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/detail/detail.css">
<link rel="stylesheet" href="css/myPage/myPage.css">
<link rel="stylesheet" href="css/index/footer.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


</head>
<body>

	<div class="index_con">
		<div>
			<jsp:include page="${headerPage }"></jsp:include>
		</div>

		<main>
			<jsp:include page="${contentPage }"></jsp:include>
		</main>
	</div>
	<footer>
		<jsp:include page="jsp/footer.jsp"></jsp:include>
	</footer>
	
	<div class="btns">
	  <div class="moveTopBtn">Top</div>
	  <div class="moveBottomBtn">Bottom</div>
	</div>

<script type="text/javascript" src="js/login/updownbtn.js"></script>
<script type="text/javascript" src="js/login/myPage.js"></script>
<script type="text/javascript" src="js/detail/detail.js"></script>
<script type="text/javascript" src="js/login/valueCheck.js"></script>
<script type="text/javascript" src="js/login/validCheck.js"></script>

</body>
</html>