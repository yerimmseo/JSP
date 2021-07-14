<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.removeAttribute("choice");
	// session.setAttribute("choice", null);
	response.sendRedirect("/chap02/scope/scope.jsp");
%>