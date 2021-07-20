<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>관리자 메뉴</h3>
	<ul>
		<li><a href="./admin/addQuestion">새 질문 등록하기 [현재 ${q_count }개]</a></li>
		<li><a href="./admin/addItem/index">새 항목 등록하기 [아직 완성되지 않은 질문 ${q_count2 }개]</a></li>
	</ul>
	
	<hr>
	
	<h3>사용자 메뉴</h3>
	<ul>
		<li>아직 없음</li>
	</ul>
	
	<hr>

</body>
</html>