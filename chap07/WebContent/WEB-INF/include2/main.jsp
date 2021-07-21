<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <jsp:include page="./header.jsp"/> --%>
<%@ include file="./tags.jspf" %>
<%@ include file="./global_variables.jspf" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include2 Main Page</title>
</head>
<body>
	
	<c:url value="/abc"></c:url>

	<h3># jsp include와 include directive의 차이점</h3>
	
	<ul>
		<li>jsp include는 req, resp를 전달하고 그곳에서 완성된 응답을 포함한다</li>
		<li>include directive는 요청을 받기 전에 소스 파일을 가져와서 합쳐놓는다</li>
	</ul>
	<%@ include file="./sub.jsp" %>

</body>
</html>