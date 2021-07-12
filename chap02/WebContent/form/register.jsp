<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%!
	private String getTimeLabel(String time) {
		if (time == null) {
			return "�ð��� �ΰ���";
		}
		
		switch (time) {
		case "am":
			return "���� ���";
		case "pm":
			return "���� ���";
		case "other":
			return "�� �� �ð�";
		case "any":
			return "�ƹ����� �ʿ��� �ð�";
		default:
			return "�߸��� �ð�";
		}
	}
%>

<%
	request.setCharacterEncoding("EUC-KR");

	String firstName = request.getParameter("first-name");
	String lastName = request.getParameter("last-name");
	String time = request.getParameter("time");
	String interests = request.getParameter("interests");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���۹��� ���� ��� ���</title>
</head>
<body>

	FirstName : <%=firstName != null ? firstName : "����" %> <br>
	LastName : <%=lastName != null ? lastName : "����" %> <br>
	����ð� : <%=getTimeLabel(time)  %>

</body>
</html>