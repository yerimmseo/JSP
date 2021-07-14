<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>'<%=request.getAttribute("fruitName") %>'�� ������ ������</title>
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
	
	<h3># Attribute�� ����ִ� ������ ���� ���� ���� ��� (EL, Expression Language)</h3>
	
	<ul>
		<li>Attribute�� ����ִ� ������Ʈ�� ���� ���� �� �� �ִ�</li>
		<li>JSP�� �������� ��ȯ�ϴ� �������� �ش� Ŭ������ toString()�� ȣ���Ͽ� html �������� ����Ѵ�</li>
		<li>EL�� ���� �ν��Ͻ��� �ʵ尪�� �����ϸ� �ش� �ʵ��� getter�� �ڵ����� ȣ���Ѵ�</li>
		<li>.��� ������ �ʵ尡 getter�� ���� �ʵ��� ������ �߻��Ѵ�</li>
	</ul>
	
	<ul>
		<li>${fruitName }</li>
		<li>${fruitDetail }</li>
		<li>${apple1.price }</li>
		<li>${apple1.size }</li>
	</ul>
	
</body>
</html>