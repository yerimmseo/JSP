<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String fruit = request.getParameter("fruit");

	// �������� ������ �⺻ 30�� �Ŀ� ����. 10�� ���� ������� ��û�� ������ ����Ǵ� �������� ����.
	session.setMaxInactiveInterval(10);
	
	session.setAttribute("choice", fruit.toUpperCase());
	
	response.sendRedirect("/chap02/scope/scope.jsp");
%>