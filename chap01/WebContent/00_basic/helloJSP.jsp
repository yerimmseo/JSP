<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>helloJSP</title>
</head>
<body>

	<h3>JSP (Java Server Page)</h3>
	
	<ul>
		<li>Servlet���� html�� �Է��ϱ� �ʹ� ���� -> JSP ����</li>
		<li>.jsp�� ��Ĺ�� ��ϵǴ� ����: <br>
			JSP�� �ۼ��� �ڵ� -> Servlet �ڵ�� ��ȯ -> ������ -> Tomcat�� ���</li>
		<li>������ ��Ĺ�� ��ϵǴ� ����: <br>
			Servlet -> ������ -> Tomcat�� ���</li>
		<li>JSP: html �ڵ尡 ����, JAVA �ڵ带 Ư���� ���� �±׸� ����� �߰�</li>
		<li>����: JAVA �ڵ尡 ����, html �ڵ带 ���ڿ��� �߰�</li>
		<li>HTML �ڵ��� ���� ���� �������� ������ ���� JSP�� ����ϰ�,
			JAVA �ڵ��� ���� ���� �������� ������ ���� ������ ����ϴ� ���� �����ϴ�</li>
	</ul>
	
<%-- JSP Script --%>
<%--
	<%  %> : ��� �ڹ� �ڵ带 ����� �� �ִ� ����
	<%! %> : �Լ��� ������ �� �ִ� ����
	<%= %> : ���ϴ� ���� HTML������ ��� (out.print()�� ������ ����)
	<%@ %> : ���� ������ ���� �پ��� ���� 
--%>

<%!
	private String createColorRedText(String text) {
		return String.format("<div style='color: red;'>%s</div>", text);
	}

	private String createBackgroundColorRedText(String text) {
		return String.format("<div style='Background-color: red; color: white;'>%s</div>", text);
	}
%>

<%
	// ���� ���� �ڹ� �ڵ带 ���� �� �� �ִ� ���� (���������� �޼��� ���ο� �� �� �ִ� �͵鸸)
	int sum = 0;

	for (int i = 0; i < 10; i++) {
		sum += i;
	}
	
	// JSP ���� �������� �⺻������ �ݵ�� �����ϴ� ��ü���� �� ���� �ִ�. (JSP ���尴ü)
	// �� �� �ϳ��� out�̴�
	out.print(createColorRedText("Hello!"));
	out.print(createBackgroundColorRedText("Hello!"));
%>

<%=createColorRedText("Hi!!!") %>
<%=sum %>
<%=createBackgroundColorRedText("Everything!") %>

<script>
	let a = <%=sum %>;
	let b = 20;
</script>
<script src=""></script>

</body>
</html>