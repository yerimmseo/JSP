<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>페이지 선택 페이지</title>
</head>
<body>
	
	<h3>이동할 페이지를 선택해주세요</h3>
	
	<form action="/chap02/page/controller" method="GET">
		<input type="radio" name="page" value="1" checked> <label>page1</label>
		<input type="radio" name="page" value="2"> <label>page2</label>
		<input type="radio" name="page" value="3"> <label>page3</label>
		<input type="submit" value="이동">
	</form>
	
</body>
</html>