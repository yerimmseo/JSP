<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// ������ �ٷ� �����Ų��.
	session.invalidate();
	response.sendRedirect("/chap02/scope/scope.jsp");
%>