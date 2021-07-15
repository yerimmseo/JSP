<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>자바빈</title>
</head>
<body>

	<h3># 자바빈 객체 (JavaBean Object)</h3>
	<ul>
		<li>JSP에서 데이터를 편리하게 주고받기 위한 클래스의 표준</li>
		<li>자바빈 표준에 맞춰 정의한 클래스는 JSP에서 편리하게 사용할 수 있다</li>
	</ul>
	
	<h3># 자바빈 객체의 규칙</h3>
	<ol>
		<li>반드시 public class여야 한다</li>
		<li>기본 생성자가 반드시 존재해야 한다</li>
		<li>필드의 접근 제어자가 private이어야 한다</li>
		<li>필드에는 반드시 getter/setter를 통해 접근해야 한다</li>
	</ol>
	
	<hr>
	
	<h3># 연습문제</h3>
	<ol>
		<li>현재 페이지의 아래에 학생의 이름과 점수를 입력하는 폼을 생성한다</li>
		<li>이름과 점수와 함께 서버에 요청을 보내면 성적표 페이지를 응답받는다</li>
		<li>성적표에는 이름/각 과목 점수/평균/등수가 적혀있다</li>
		<li>Student 클래스에 메서드와 필드는 자유롭게 추가할 수 있다</li>
		<li>원래는 DB를 활용해야 하지만 이번엔 활용하지 말고 풀어보세요</li>
	</ol>
	
	<form id="student-form" action="./add" method="POST"></form>
	
	<ul type="none">
		<li>이름: <input type="text" name="name" form="student-form"></li>
		<li>국어: <input type="text" name="kor" form="student-form"></li>
		<li>영어: <input type="text" name="eng" form="student-form"></li>
		<li>수학: <input type="text" name="math" form="student-form"></li>
		<li><input style="width: 230px;" type="submit" value="등록" form="student-form"></li>
	</ul>
	
	<hr>
	
	<form id="student-form2" action="/chap03/javabean/useBeanController.jsp" method="POST"></form>
	
	<ul type="none">
		<li>이름: <input type="text" name="name" form="student-form2"></li>
		<li>국어: <input type="text" name="kor" form="student-form2"></li>
		<li>영어: <input type="text" name="eng" form="student-form2"></li>
		<li>수학: <input type="text" name="math" form="student-form2"></li>
		<li><input style="width: 230px;" type="submit" value="등록" form="student-form2"></li>
	</ul>
	
	<form id="gradeForm" action="/chap03/student/score" method="GET"></form>
	
	<table>
		<tr>
			<td><label for="input1">이름</label></td>
			<td><input type="text" id="input1" form="gradeForm" name="name"></td>
		</tr>
		<tr>
			<td><label for="input2">국어</label></td>
			<td><input type="text" id="input2" form="gradeForm" name="kor"></td>
		</tr>
		<tr>
			<td><label for="input3">영어</label></td>
			<td><input type="text" id="input3" form="gradeForm" name="eng"></td>
		</tr>
		<tr>
			<td><label for="input4">수학</label></td>
			<td><input type="text" id="input4" form="gradeForm" name="math"></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" form="gradeForm" value="성적표 보기"></th>
		</tr>
	</table>
	
</body>
</html>