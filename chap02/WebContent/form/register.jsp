<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%!
	private String getTimeLabel(String time) {
		if (time == null) {
			return "시간이 널값임";
		}
		
		switch (time) {
		case "am":
			return "오전 희망";
		case "pm":
			return "오후 희망";
		case "other":
			return "그 외 시간";
		case "any":
			return "아무때나 필요한 시간";
		default:
			return "잘못된 시간";
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
<title>전송받은 내용 등록 결과</title>
</head>
<body>

	FirstName : <%=firstName != null ? firstName : "없음" %> <br>
	LastName : <%=lastName != null ? lastName : "없음" %> <br>
	희망시간 : <%=getTimeLabel(time)  %>

</body>
</html>