package chap03.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/language/kr")
public class HangeulController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		// GET��� ��û�� URL�ڿ� �߰��Ǿ �����ϴµ� 
		// �װ��� �Ƿ��� �������� ���ڵ��� �� ����(Tomcat)�� ����Ѵ�.
		
		// ��Ĺ�� ���ڵ� Ÿ���� �⺻������ UTF-8�� ����Ѵ�
		// server.xml�� Connector�� URIEncoding �Ӽ��� ����
		// GET��� ���ڵ� Ÿ���� ������ �� �ִ�
		System.out.println(req.getParameter("msg"));
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
	
		// POST����� ��û�� ��û ��ü ���ο� �Ƿ��� �����Ѵ�.
		
		req.setCharacterEncoding("EUC-KR");
		System.out.println(req.getParameter("msg"));
	}
}
