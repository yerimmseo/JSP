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
		<li>DB에 회원 정보를 저장할 수 있는 테이블을 하나 생성한다. (ID/PASSWORD/EMAIL) </li>
		<li>비밀번호는 해시 값으로 저장해야 한다.</li>
		<li>사용자는 지금 이 페이지에서 아이디와 비밀번호를 입력한다.</li>
		<li>컨트롤러에서 DB에서 꺼내온 아이디/비밀번호와 사용자가 입력한 아이디/비밀번호를 대조하여
			세션에 로그인 성공 여부를 저장한다.</li>
		<li>로그인 된 상태로 현재 페이지를 보면 로그인 폼은 사라지고, 로그아웃 버튼이 보여야 한다.</li>
		<li>로그아웃 기능도 구현해야 한다</li>
	</ol>
	
	<hr>
	
	<h3># 자바로 만든 클래스를 .jsp에서 자유롭게 가져다 사용할 수 있다</h3>
	<%=MyHashing.hash("12345") %>
	
	<h3># Dynamic Web Project에 외부 라이브러리를 사용하기 위해서는
		WEB-INF/lib 폴더에 .jar 등을 넣어줘야 한다.</h3>
	
	<hr>
	
	<form id="infoForm" action="http://localhost:8080/chap02/info/enrollment" method="GET"></form>
	
	<table>
		<tr>
			<td><label for="input1">아이디</label></td>
			<td><input type="text" id="input1" form="infoForm" name="id"></td>
		</tr>
		<tr>
			<td><label for="input2">패스워드</label></td>
			<td><input type="password" id="input2" form="infoForm" name="password"></td>
		</tr>
		<tr>
			<td><label for="input3">이메일</label></td>
			<td><input type="email" id="input3" form="infoForm" name="email"></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" form="infoForm" value="정보 저장"></th>
		</tr>
	</table>
	
	<hr>
	

<% if (session.getAttribute("success") == null) { %>
	<h3>로그인</h3>
	
	<form id="loginForm" action="/chap02/info/log-in" method="GET"></form>
	
	<table>
		<tr>
			<td><label for="input4">아이디</label></td>
			<td><input type="text" id="input4" form="loginForm" name="log-id"></td>
		</tr>
		<tr>
			<td><label for="input5">패스워드</label></td>
			<td><input type="password" id="input5" form="loginForm" name="log-password"></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" form="loginForm" value="로그인"></th>
		</tr>
	</table>
<% } else if (session.getAttribute("success").equals("성공")) { %>
	<h3>로그인 성공!</h3>
	<button id="log-out-btn">로그아웃</button>
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