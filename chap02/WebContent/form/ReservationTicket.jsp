<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Reservation Ticket</title>
<style></style>
</head>
<body>

	<table border="1" style="margin: auto;">
		<tr>
			<th>����</th>
			<th>�󿵽ð�</th>
			<th>����</th>
			<th>û�ҳ�</th>
			<th>�ôϾ�</th>
			<th>�����</th>
		</tr>
		<tr>
			<td rowspan="4">����<br>(��~��)</td>
			<td>����</td>
			<td>6,000��</td>
			<td>6,000��</td>
			<td>5,000��</td>
			<td>5,000��</td>
		</tr>
		<tr>
			<td>�Ϲ�</td>
			<td>7,000��</td>
			<td>7,000��</td>
			<td>5,000��</td>
			<td>5,000��</td>
		</tr>
		<tr>
			<td>������</td>
			<td>9,000��</td>
			<td>8,000��</td>
			<td>5,000��</td>
			<td>5,000��</td>
		</tr>
		<tr>
			<td>�ɾ�</td>
			<td>7,000��</td>
			<td>7,000��</td>
			<td>5,000��</td>
			<td>5,000��</td>
		</tr>
	</table>
	
	<form id="registForm" 
		action="http://localhost:8080/chap02/ticket/register" method="GET"></form>

	<table style="margin:auto;">
		<tr>
			<td>
				<select name="time" form="registForm">
					<option value="none">--�ð�����--</option>
					<option value="morning">����</option>
					<option value="afternoon">�Ϲ�</option>
					<option value="prime">������</option>
					<option value="nigt">�ɾ�</option>
				</select>
			</td>
			<td>����</td>
			<td>
				<select name="adult" form="registForm">
					<option value="0">--�ο�����--</option>
					<option value="1">1��</option>
					<option value="2">2��</option>
					<option value="3">3��</option>
					<option value="4">4��</option>
					<option value="5">5��</option>
				</select>
			</td>
			<td>û�ҳ�</td>
			<td>
				<select name="teenager" form="registForm">
					<option value="0">--�ο�����--</option>
					<option value="1">1��</option>
					<option value="2">2��</option>
					<option value="3">3��</option>
					<option value="4">4��</option>
					<option value="5">5��</option>
				</select>
			</td>
			<td>�ôϾ�</td>
			<td>
				<select name="senior" form="registForm">
					<option value="0">--�ο�����--</option>
					<option value="1">1��</option>
					<option value="2">2��</option>
					<option value="3">3��</option>
					<option value="4">4��</option>
					<option value="5">5��</option>
				</select>
			</td>
			<td>�����</td>
			<td>
				<select name="disabled" form="registForm">
					<option value="0">--�ο�����--</option>
					<option value="1">1��</option>
					<option value="2">2��</option>
					<option value="3">3��</option>
					<option value="4">4��</option>
					<option value="5">5��</option>
				</select>
			</td>
			<td>
				<input type="submit" form="registForm" value="Submit Form">
			</td>
		</tr>
	</table>

</body>
</html>