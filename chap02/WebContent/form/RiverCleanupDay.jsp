<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>River Cleanup Day Registration</title>
<style>
	td {
		padding-bottom: 20px;
	}
</style>
</head>
<body>
	<h3># form태그 복습</h3>
	<ul>
		<li>id를 설정해두면 input태그의 form속성으로 해당 폼을 선택할 수 있다</li>
		<li>submit이 발생했을 때 어느 URL로 요청보낼지를 action 속성에 정의한다</li>
		<li>method는 submit 발생 시 어느 방식으로 요청보낼 지를 설정한다</li>
		<li>GET방식으로 보내면 URL뒤에 데이터가 보이는 형태로 요청보낸다 ?name=value</li>
		<li>POST방식으로 보내면 URL뒤에 데이터가 보이지 않으며 길이 제한이 없다</li>
		<li>GET방식은 URL뒤에 붙여서 전송하는 방식이기 때문에 길이 제한이 존재한다.
			textarea와 같은 긴 내용의 데이터를 전송할 때는 반드시 GET이외의 전송방식을 사용하는 것이 좋다.</li>
	</ul>
	
	<!-- 
		현재 위치 - http://localhost:8080/chap02/form/RiverCleanupDay.jsp
		
		목표 위치 - http://localhost:8080/chap02/river/register
		
		1. ../river/register
		2. /chap02/river/register
		3. //localhost:8080/chap02/river/register
		4. http://localhost:8080/chap02/river/register	
	-->

	<form id="registForm"
		action="/chap02/form/register.jsp" method="POST"></form>
	
	<hr>

	<table style="margin: auto;">
		<tr>
			<th colspan="3">
				<h1 style="font-weight: normal;">River Cleanup Day</h1>
				<h1>Volunteer Registration</h1>
				<hr>
			</th>
		</tr>
		<tr>
			<td><b>Full Name</b></td>
			<td><input name="first-name" form="registForm" type="text"
				size="15"> <br> First Name</td>
			<td><input name="last-name" form="registForm" type="text"
				size="15"> <br> Last Name</td>
		</tr>
		<tr>
			<td><b>Contact No.</b></td>
			<td><input type="text" size="15"> - <br> Area Code
			</td>
			<td><input type="text" size="15"> <br> Phone Number
			</td>
		</tr>
		<tr>
			<td><b>E-mail</b></td>
			<td colspan="2"><input type="email" size="30"
				placeholder="ex:myname@example.com"> <br>
				example@example.com</td>
		</tr>
		<tr>
			<td><b>What time can <br> you work?
			</b></td>
			<td colspan="2">
				<input form="registForm" type="radio" value="any" name="time" id="" checked><label>Any time</label> <br> 
				<input form="registForm" type="radio" value="am" name="time" id=""> <label>8am - Noon</label> <br>
				<input form="registForm" type="radio" value="pm" name="time" id=""> <label>1 - 5pm</label> <br>
				<input form="registForm" type="radio" value="other" name="time" id=""> <label>Other</label> <br>
			</td>
		</tr>
		<tr>
			<td><b>Interested in:</b></td>
			<td colspan="2">
				<input form="registForm" type="checkbox" name="interests" id="" value="cl">Cleaning <br>
				<input form="registForm" type="checkbox" name="interests" id="" value="tp">Transportation <br>
				<input form="registForm" type="checkbox" name="interests" id="" value="wherever">Wherever Needed <br> 
				<input form="registForm" type="checkbox" name="interests" id="" value="fs"> Food Service <br> 
				<input form="registForm" type="checkbox" name="interests" id="" value="fa"> First Aid <br>
				<input form="registForm" type="checkbox" name="interests" id="" value="other"> Other</td>
		</tr>
		<tr>
			<td><b>Comments></b></td>
			<td colspan="2"><textarea cols="40" rows="7"></textarea></td>
		</tr>
		<tr>
			<th colspan="3">
				<input style="padding: 15px;" type="submit"
					form="registForm" value="Submit Form"></th>
		</tr>
	</table>

</body>
</html>