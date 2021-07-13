package chap02.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/page/controller2")
public class PageNumController2 extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String page = req.getParameter("page");
		
		/*
		 * # �����̷�Ʈ
		 * - �̰�(���� or JSP)���� ��û�� ����ڿ��� �ٸ������� �ٽ� ��û�� ���� ����Ѵ�
		 * - ����� �� ���������� �ٽ� ��û ������ �� URL�� ����ؾ� �Ѵ�
		 * */
		resp.sendRedirect(String.format("/chap02/forward/view/page%s.jsp", page));
	}
	
}
