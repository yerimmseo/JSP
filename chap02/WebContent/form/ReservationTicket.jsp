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
			<th>구분</th>
			<th>상영시간</th>
			<th>성인</th>
			<th>청소년</th>
			<th>시니어</th>
			<th>장애인</th>
		</tr>
		<tr>
			<td rowspan="4">평일<br>(월~목)</td>
			<td>조조</td>
			<td>6,000원</td>
			<td>6,000원</td>
			<td>5,000원</td>
			<td>5,000원</td>
		</tr>
		<tr>
			<td>일반</td>
			<td>7,000원</td>
			<td>7,000원</td>
			<td>5,000원</td>
			<td>5,000원</td>
		</tr>
		<tr>
			<td>프라임</td>
			<td>9,000원</td>
			<td>8,000원</td>
			<td>5,000원</td>
			<td>5,000원</td>
		</tr>
		<tr>
			<td>심야</td>
			<td>7,000원</td>
			<td>7,000원</td>
			<td>5,000원</td>
			<td>5,000원</td>
		</tr>
	</table>
	
	<form id="registForm" 
		action="http://localhost:8080/chap02/ticket/register" method="GET"></form>

	<table style="margin:auto;">
		<tr>
			<td>
				<select name="time" form="registForm">
					<option value="none">--시간선택--</option>
					<option value="morning">조조</option>
					<option value="afternoon">일반</option>
					<option value="prime">프라임</option>
					<option value="nigt">심야</option>
				</select>
			</td>
			<td>성인</td>
			<td>
				<select name="adult" form="registForm">
					<option value="0">--인원선택--</option>
					<option value="1">1명</option>
					<option value="2">2명</option>
					<option value="3">3명</option>
					<option value="4">4명</option>
					<option value="5">5명</option>
				</select>
			</td>
			<td>청소년</td>
			<td>
				<select name="teenager" form="registForm">
					<option value="0">--인원선택--</option>
					<option value="1">1명</option>
					<option value="2">2명</option>
					<option value="3">3명</option>
					<option value="4">4명</option>
					<option value="5">5명</option>
				</select>
			</td>
			<td>시니어</td>
			<td>
				<select name="senior" form="registForm">
					<option value="0">--인원선택--</option>
					<option value="1">1명</option>
					<option value="2">2명</option>
					<option value="3">3명</option>
					<option value="4">4명</option>
					<option value="5">5명</option>
				</select>
			</td>
			<td>장애인</td>
			<td>
				<select name="disabled" form="registForm">
					<option value="0">--인원선택--</option>
					<option value="1">1명</option>
					<option value="2">2명</option>
					<option value="3">3명</option>
					<option value="4">4명</option>
					<option value="5">5명</option>
				</select>
			</td>
			<td>
				<input type="submit" form="registForm" value="Submit Form">
			</td>
		</tr>
	</table>

</body>
</html>