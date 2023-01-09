<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
request.setCharacterEncoding("utf-8");


String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String phonenumber = request.getParameter("phonenumber");
String birthday = request.getParameter("birthday");
String address = request.getParameter("address");
String gender = request.getParameter("gender");



%>

</head>
<body>
<h2>가입완료</h2>
<div class = "contanier">

<div class="items">
<div class="item1">Name</div>
<div class="item2"><%= name%>
</div>

</div>

<div class="items">
<div class="item1">ID</div>
<div class="item2"><%= id%>
</div>

</div>

<div class="items">
<div class="item1">PW</div>
<div class="item2"><%= pw%>
</div>

</div>


<div class="items">
<div class="item1">성별</div>
<div class="item2"><%= gender%>
</div>

</div>


<div class="items">
<div class="item1">휴대전화</div>
<div class="item2"><%= phonenumber%>
</div>
</div>

<div class="items">
<div class="item1">생년월일</div>
<div class="item2"><%= birthday%>
</div>
</div>


<div class="items">
<div class="item1">주소</div>
<div class="item2"><%= address%>
</div>
</div>


<div class="items">
<div class="item1">성별</div>
<div class="item2"><%= gender%>
</div>
</div>


</div>


</body>
</html>