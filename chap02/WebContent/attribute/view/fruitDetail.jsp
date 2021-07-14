<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>'<%=request.getAttribute("fruitName") %>'의 상세정보 페이지</title>
</head>
<body>
	
	<h1><%=request.getAttribute("fruitName") %></h1>
	
	<p><%=request.getAttribute("fruitDetail") %></p>
	
	<hr>
	
	<table border="1">
		<tr>
			<th>PRICE</th>
			<th>SIZE</th>
		</tr>
		<%=request.getAttribute("apple1") %>
		<%=request.getAttribute("apple2") %>
		<%=request.getAttribute("apple3") %>
		<%
			Object[] apples = (Object[])request.getAttribute("appleArray");
		
			for (int i = 0; i < apples.length; i++) {
				out.print(apples[i]);		
			}
		%>
	</table>
	
	<hr>
	
	<h3># Attribute에 들어있는 값들을 쉽게 꺼내 쓰는 방법 (EL, Expression Language)</h3>
	
	<p>Attribute에 들어있는 값이 인스턴스인 경우 .찍고 필드명을 쓰면 해당 필드의 getter를 자동으로 호출한다</p>
	
	<ul>
		<li>${fruitName }</li>
		<li>${fruitDetail }</li>
		<li>${apple1.price }</li>
		<li>${apple1.size }</li>
	</ul>
	
</body>
</html>