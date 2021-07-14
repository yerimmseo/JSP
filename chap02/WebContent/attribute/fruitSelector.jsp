<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>fruitSelector.jsp</title>
<style>
#fruit-title {
	text-align: center;
}
#fruit-container {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr;
	grid-column-gap: 5%;
	width: 600px;
	margin: auto;
}
#fruit-container > div {
	height: 200px;
	background-size: contain;
	background-repeat: no-repeat;
	background-position: center;
	border: solid 1px black;
}
#pineapple {
	background-image: url("https://post-phinf.pstatic.net/MjAxOTA4MjhfMTcx/MDAxNTY2OTc3NDE2MzY5.H4QNmOKzk04tZX1po_5jHF4i2O_I_FZUq_yx9OD-2Z0g.kCQJ8ZJ4OCi3qbQWhrHaRLUsifFst0dn7tVP_GK0fbsg.JPEG/28872747_l.jpg?type=w1200");
}
#orange {
	background-image: url("https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F214DC34558F84CEC18");
}
#mango {
	background-image: url("https://t1.daumcdn.net/cfile/tistory/225EF04A57D3CA6605");
}
</style>
</head>
<body>
	
	<h3 id="fruit-title">과일을 골라보세요</h3>
	
	<!-- data-* : 해당 속성에 저장한 값은 자바스크립트에서 꺼내기 위해 설정해놓는 속성값이다 -->
	<div id="fruit-container">
		<div id="pineapple" class="fruit" data-fruit-name="pineapple" data-fruit-price="5000"></div>
		<div id="orange" class="fruit" data-fruit-name="orange" data-fruit-price="1000"></div>
		<div id="mango" class="fruit" data-fruit-name="mango" data-fruit-price="2500"></div>
	</div>
	
	<script src="./js/fruit.js"></script>
	
</body>
</html>