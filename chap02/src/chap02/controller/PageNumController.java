package chap02.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/page/controller" })
public class PageNumController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String page = req.getParameter("page");
		
		System.out.printf("���� ���� �������� %s������ �Դϴ�.\n", page);
		
		// ���� ���� ���� ���� �ٸ� ������ ��������� �ϴ� ���
		// ������ ����ϸ� �ڵ尡 �ſ� ������������.
		// ���� ������� ��û�� �ٸ� �������� �й��Ͽ� ������ �����ϴ� ���� �ٶ����ϴ�.
		
		// �� ��, �ٸ� .jsp�������� request�� �״�� �����Ͽ� ������ .jsp���� ������ �����ϴ� ���� forward��� �Ѵ�.
		RequestDispatcher dispatcher = req.getRequestDispatcher(String.format("/forward/view/page%s.jsp", page));

		// dispatcher.forward(req, resp);
		
		// include�� �ٸ� .jsp�������� request�� ���� �� ������ ����� �� �������� �ٽ� �����´�.
		resp.setCharacterEncoding("EUC-KR");
		dispatcher.include(req, resp);
		
		// �̾ ������ ����� ���� �� �ִ�.
		resp.getWriter().append("<h3>�������� �߰���. by PageNumController</h3>");
	}
	
}
