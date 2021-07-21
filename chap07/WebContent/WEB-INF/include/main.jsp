<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Main Page</title>
<style>
	.container {
		display: grid;
		grid-template-columns: 1fr 2fr 2fr;
	}
	
	.container > * {
		background-color: black;
		margin: 5px;
		color: white;
		padding: 50px;
	}
</style>
</head>
<body>

	<h3># include도 jsp페이지에서 쓸 수 있다</h3>
	
	<p>포워드는 서블릿에서 사용하는 것이 용도에 맞고
		include는 jsp에서 사용하는 것이 용도에 맞다</p>
		
	<div class="container">
		<jsp:include page="./sub.jsp"></jsp:include>
	</div>
	
	<hr>
	
	<footer>
		<jsp:include page="./footer.jsp"></jsp:include>
	</footer>

</body>
</html>