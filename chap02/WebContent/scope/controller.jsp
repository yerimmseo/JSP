<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String fruit = request.getParameter("fruit");

	// 설정하지 않으면 기본 30분 후에 만료. 10초 동안 사용자의 요청이 없으면 만료되는 세션으로 설정.
	session.setMaxInactiveInterval(10);
	
	session.setAttribute("choice", fruit.toUpperCase());
	
	response.sendRedirect("/chap02/scope/scope.jsp");
%>