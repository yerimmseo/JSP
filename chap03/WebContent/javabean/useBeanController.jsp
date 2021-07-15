<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%-- 
	# jsp:useBean
	- ��(Bean) ��ü�� �ν��Ͻ��� �����Ͽ� ��Ʈ����Ʈ�� ����Ѵ�.
	- ������ �ν��Ͻ��� ��� ��Ʈ����Ʈ�� ��������� ������ �� �ִ�.
	
	# jsp:setProperty
	- �� ��ü�� �ʵ带 ä��� ����� �ϴ� jsp�±�
	- property �Ӽ��� *�� �����ϸ� �Ķ������ ���� �̿��� �ڵ����� �� ��ü�� �ʵ带 ä���.
	- �ش� �� ��ü�� setter�� ����Ѵ�
	
	�� input�±��� name���� Ŭ������ �ʵ���� ��ġ��Ű�� �ڵ����� �������ִ� ��찡 ������ ����.
--%>
<%--
	�� �Ʒ� �� ���� �ǹ� (�� ��ü �ʵ��� �Ȱ��� �Ķ���͸� ������ �ʵ带 �ڵ����� ä���)
	request.setAttribute("stu", new chap03.bean.Student());

	Student stu = (Student)request.getAttribute("stu");
	stu.setKor(request.getParameter("kor"));
	stu.setEng(request.getParameter("eng"));
	stu.setMath(request.getParameter("math"));
--%>
<jsp:useBean id="stu" class="chap03.bean.Student" scope="request"/>
<jsp:setProperty name="stu" property="*"/>

<p>
	${stu.name }, ${stu.kor }, ${stu.eng }, ${stu.math }
</p>