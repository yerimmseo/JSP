<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList, chap03.bean.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����ǥ</title>
</head>
<body>

	<h3 style="text-align: center;">����ǥ</h3>
	<table border="1" style="text-align: center; margin: auto;">
		<tr>
			<th>���</th>
			<th>�й�</th>
			<th>�̸�</th>
			<th>����</th>
			<th>����</th>
			<th>����</th>
			<th>���</th>
		</tr>
		<% 
		ArrayList<Student> students = (ArrayList<Student>)request.getAttribute("students");
		for (int i = 0; i < students.size(); i++) {
			out.print("<tr>" + students.get(i) + "</tr>");
		}
		%>
		<tr>
			<th colspan="7"><button id="more-btn">���� �� �Է��ϱ�</button></th>
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