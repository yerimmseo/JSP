package chap01.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet2")
public class MyServlet2 extends HttpServlet {

	// doGet() : Get��� ��û�� �������� �������� �� ����Ǵ� �ݹ� �޼���
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setCharacterEncoding("EUC-KR");
		resp.getWriter().print("<h1>Servlet2�� ���� ���� ȯ���մϴ�.</h1>");
	}
	
}
