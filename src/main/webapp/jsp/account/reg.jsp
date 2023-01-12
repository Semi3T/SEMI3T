<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src = "validcheck.js"></script>
<script type="text/javascript" src = "valueCheck.js"></script>
</head>
<body>
<form action="RegC" method ="post" onsubmit="return call()">
<div class = "container">



<div class = "items">
<div class = "item1">ID</div>
<div class = "item2">
<input name = "id" class="textInput" type="text">
</div>
</div>


<div class = "items">
<div class = "item1">비밀번호</div>
<div class = "item2">
					<input name="pw" class="textInput" type="password">
				</div>
</div>

<div class = "items">
<div class = "item1">이름</div>
<div class = "item2">
<input name = "login_name" class="textInput" type="text">
</div>
</div>


<div class = "items">
<div class = "item1">전화번호</div>
<div class = "item2">
  <input type="text" name="phonenumber"  placeholder="핸드폰번호 입력" maxlength="11"/>
</div>
</div>


<div class = "items">
<div class = "item1">생년월일</div>
<div class = "item2">
  <input type="date" name="birthday">
</div>
</div>


<div class = "items">
<div class = "item1">주소</div>
<div class = "item2">
<input type="text" id="address" name="address">
</div>
</div>


<div class = "items">
<div class = "item1">성별</div>
<div class = "item2">

<div class = "gender">
<input type = "radio" name="gender" value="남">남성
<input type = "radio" name="gender" value="여">여성
</div>
</div>
</div>


<div class="items item3">
<div class="button">
<button>회원가입</button>
</div>
</div>
</div>



</form>


     





</body>
</html>