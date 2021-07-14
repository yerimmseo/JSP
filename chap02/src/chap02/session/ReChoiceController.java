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
		// JSP 내장 객체의 서블릿 버전
		
		// ServletContext : 서버 정보가 저장되어 있는 객체
		ServletContext application = req.getServletContext();
		// HttpSession : 세션 정보가 저장되어있는 객체
		HttpSession session = req.getSession();
		
		System.out.println("현재 선택된 과일: " + session.getAttribute("choice"));
		
		session.removeAttribute("choice");
		
		resp.sendRedirect("/chap02/scope/scope.jsp");
	}
	
}
