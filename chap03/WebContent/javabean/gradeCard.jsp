<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList, chap03.bean.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>성적표</title>
</head>
<body>

	<h3 style="text-align: center;">성적표</h3>
	<table border="1" style="text-align: center; margin: auto;">
		<tr>
			<th>등수</th>
			<th>학번</th>
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
			<th>평균</th>
		</tr>
		<% 
		ArrayList<Student> students = (ArrayList<Student>)request.getAttribute("students");
		for (int i = 0; i < students.size(); i++) {
			out.print("<tr>" + students.get(i) + "</tr>");
		}
		%>
		<tr>
			<th colspan="7"><button id="more-btn">점수 더 입력하기</button></th>
		</tr>
	</table>
	
	<script>
		const btn = document.querySelector("#more-btn");
		
		function invaildateSession() {
			location.href = "/chap03/javabean/invalidate.jsp";
		}
		
		btn.addEventListener('click', (e) => {
			invaildateSession();
		});
	</script>

</body>
</html>