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
	<h3># form�±� ����</h3>
	<ul>
		<li>id�� �����صθ� input�±��� form�Ӽ����� �ش� ���� ������ �� �ִ�</li>
		<li>submit�� �߻����� �� ��� URL�� ��û�������� action �Ӽ��� �����Ѵ�</li>
		<li>method�� submit �߻� �� ��� ������� ��û���� ���� �����Ѵ�</li>
		<li>GET������� ������ URL�ڿ� �����Ͱ� ���̴� ���·� ��û������ ?name=value</li>
		<li>POST������� ������ URL�ڿ� �����Ͱ� ������ ������ ���� ������ ����</li>
		<li>GET����� URL�ڿ� �ٿ��� �����ϴ� ����̱� ������ ���� ������ �����Ѵ�.
			textarea�� ���� �� ������ �����͸� ������ ���� �ݵ�� GET�̿��� ���۹���� ����ϴ� ���� ����.</li>
	</ul>
	
	<!-- 
		���� ��ġ - http://localhost:8080/chap/form/RiverCleanupDay.jsp
		
		��ǥ ��ġ - http://localhost:8080/chap02/river/register
		
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