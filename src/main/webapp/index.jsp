<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PolyPotion HomePage</title>
<link rel="stylesheet" href="css/index/index.css">
<link rel="stylesheet" href="css/qna/qna.css">
<link rel="stylesheet" href="css/brand/brand.css">
<link rel="stylesheet" href="css/new/new.css">
<link rel="stylesheet" href="css/sale/sale.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

	<div class="index_con">
		<div>
			<jsp:include page="jsp/header.jsp"></jsp:include>
		</div>
		
		<main>
			<jsp:include page="${contentPage }"></jsp:include>
		</main>
	</div>
		<footer>
				<jsp:include page="jsp/footer.jsp"></jsp:include>
		</footer>


</body>
</html>