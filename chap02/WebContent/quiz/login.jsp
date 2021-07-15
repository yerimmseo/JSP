<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="chap02.hash.MyHashing"%> <%-- JSP Import --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Log-in Page</title>
</head>
<body>

	<h3># login.jsp</h3>

	<ol>
		<li>DB�� ȸ�� ������ ������ �� �ִ� ���̺��� �ϳ� �����Ѵ�. (ID/PASSWORD/EMAIL) </li>
		<li>��й�ȣ�� �ؽ� ������ �����ؾ� �Ѵ�.</li>
		<li>����ڴ� ���� �� ���������� ���̵�� ��й�ȣ�� �Է��Ѵ�.</li>
		<li>��Ʈ�ѷ����� DB���� ������ ���̵�/��й�ȣ�� ����ڰ� �Է��� ���̵�/��й�ȣ�� �����Ͽ�
			���ǿ� �α��� ���� ���θ� �����Ѵ�.</li>
		<li>�α��� �� ���·� ���� �������� ���� �α��� ���� �������, �α׾ƿ� ��ư�� ������ �Ѵ�.</li>
		<li>�α׾ƿ� ��ɵ� �����ؾ� �Ѵ�</li>
	</ol>
	
	<hr>
	
	<h3># �ڹٷ� ���� Ŭ������ .jsp���� �����Ӱ� ������ ����� �� �ִ�</h3>
	<%=MyHashing.hash("12345") %>
	
	<h3># Dynamic Web Project�� �ܺ� ���̺귯���� ����ϱ� ���ؼ���
		WEB-INF/lib ������ .jar ���� �־���� �Ѵ�.</h3>
	
	<hr>
	
	<form id="infoForm" action="http://localhost:8080/chap02/info/enrollment" method="GET"></form>
	
	<table>
		<tr>
			<td><label for="input1">���̵�</label></td>
			<td><input type="text" id="input1" form="infoForm" name="id"></td>
		</tr>
		<tr>
			<td><label for="input2">�н�����</label></td>
			<td><input type="password" id="input2" form="infoForm" name="password"></td>
		</tr>
		<tr>
			<td><label for="input3">�̸���</label></td>
			<td><input type="email" id="input3" form="infoForm" name="email"></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" form="infoForm" value="���� ����"></th>
		</tr>
	</table>
	
	<hr>
	

<% if (session.getAttribute("success") == null) { %>
	<h3>�α���</h3>
	
	<form id="loginForm" action="/chap02/info/log-in" method="GET"></form>
	
	<table>
		<tr>
			<td><label for="input4">���̵�</label></td>
			<td><input type="text" id="input4" form="loginForm" name="log-id"></td>
		</tr>
		<tr>
			<td><label for="input5">�н�����</label></td>
			<td><input type="password" id="input5" form="loginForm" name="log-password"></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" form="loginForm" value="�α���"></th>
		</tr>
	</table>
<% } else if (session.getAttribute("success").equals("����")) { %>
	<h3>�α��� ����!</h3>
	<button id="log-out-btn">�α׾ƿ�</button>
<% } %>

	<script>
		const btn = document.querySelector("#log-out-btn");
		
		function invalidateSession() {
			location.href = "./invalidate.jsp";
		}
		
		btn.addEventListener('click', (e) => {
			invalidateSession();
		});
	</script>

</body>
</html>