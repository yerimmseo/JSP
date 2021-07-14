package chap02.session;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = { "/fruit/re" })
public class ReChoiceController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// JSP ���� ��ü�� ���� ����
		
		// ServletContext : ���� ������ ����Ǿ� �ִ� ��ü
		ServletContext application = req.getServletContext();
		// HttpSession : ���� ������ ����Ǿ��ִ� ��ü
		HttpSession session = req.getSession();
		
		System.out.println("���� ���õ� ����: " + session.getAttribute("choice"));
		
		session.removeAttribute("choice");
		
		resp.sendRedirect("/chap02/scope/scope.jsp");
	}
	
}
