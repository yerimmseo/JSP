<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scope</title>
</head>
<body>

	<h3># JSP ��ü�� Scope</h3>
	
	<p>JSP��ü�� ������ ������ Scope�� ���� �޶�����.</p>
	
	<dl>
		<dt>page</dt>
		<dd>������ �������� ������ ��Ʈ����Ʈ�� ��������ó�� �ش� ������(����)�� ����� �������.</dd>
		<dt>request</dt>
		<dd>������Ʈ �������� ������ ��Ʈ����Ʈ�� ������ �߻��ϱ� ������ ������ �����ȴ�.</dd>
		<dt>session</dt>
		<dd>������� ������ ����� ������ ������ �����ȴ�. ������ ������ ���� �����Ѵ�.<br>
			IP�ּҰ� ������ �ٸ� �������� ����ϸ� �����κ��� ���ο� ������ �޾ư� �� �ִ�.</dd>
		<dt>application</dt>
		<dd>���ø����̼� �������� �����ϴ� ��Ʈ����Ʈ�� ������ ���� ������ �����ȴ�.</dd>
	</dl>
	
	<h3># ����</h3>
	
	<ol>
		<li>����ڰ� ������ ��û�� ������</li>
		<li>��û�� �ùٸ��ٸ� ������ �˸��� ������ ������. �߰��� ����ID�� �Բ� ������.</li>
		<li>������� �� �������� ù ��° ����� ����ID�� �Բ� �����Ѵ�.</li>
		<li>�ش� �������� �ٽ� ��û�� ���� �� �������� ����� ����ID�� �Բ� ���۵ȴ�.
			�� ������ �ش� ����ID�� �̿��� ����ڸ� �ĺ��Ѵ�.</li>
		<li>����ID�� ������� �� �������� ����� ������ �����ȴ�.</li>
		<li>���� ��Ʈ����Ʈ�� �����ϴ� �ڹ� ��ü���� ������� ������ ����� ������ ����ְ� �ȴ�.</li>
	</ol>
	
	<hr>
	
<% if (session.getAttribute("choice") == null) { %>
	<form id="sessionForm" action="./controller.jsp"></form>
	
	<!-- (input[id="select$" type="radio" form="sessionForm"]+label[for="select$"])*5 -->
	<input type="radio" id="select1" form="sessionForm" name="fruit" value="apple">
	<label for="select1">apple</label>
	<input type="radio" id="select2" form="sessionForm" name="fruit" value="orange">
	<label for="select2">orange</label>
	<input type="radio" id="select3" form="sessionForm" name="fruit" value="grape">
	<label for="select3">grape</label>
	<input type="radio" id="select4" form="sessionForm" name="fruit" value="peach">
	<label for="select4">peach</label>
	<input type="radio" id="select5" form="sessionForm" name="fruit" value="melon">
	<label for="select5">melon</label>
	
	<input type="submit" form="sessionForm" value="����">
<% } else { %>
	<h3>${choice }�� �����ϼ̽��ϴ�.</h3>
	
	<button id="choice-again-btn1">�ٸ� ���� �����ϱ�1</button>
	<button id="choice-again-btn2">�ٸ� ���� �����ϱ�2</button>
	<button id="choice-again-btn3">�ٸ� ���� �����ϱ�3</button>
<% } %>

	<script>
		const btn1 = document.querySelector("#choice-again-btn1");
		const btn2 = document.querySelector("#choice-again-btn2");
		const btn3 = document.querySelector("#choice-again-btn3");
		
		function invalidateSession() {
			location.href = "./invalidate.jsp";
		}
		
		function deleteChoice() {
			location.href = "./removeAttribute.jsp";
		}
		
		const servletSession = () => { location.href = '/chap02/fruit/re' };
			
		btn1.addEventListener('click', (e) => {
			invalidateSession();
		});
		
		btn2.addEventListener('click', (e) => {
			deleteChoice();
		});

		btn3.addEventListener('click', (e) => {
			servletSession();
		});
	</script>

</body>
</html>