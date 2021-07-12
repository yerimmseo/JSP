package chap01.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet2")
public class MyServlet2 extends HttpServlet {

	// doGet() : Get방식 요청이 서블릿으로 도착했을 때 실행되는 콜백 메서드
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setCharacterEncoding("EUC-KR");
		resp.getWriter().print("<h1>Servlet2에 오신 것을 환영합니다.</h1>");
	}
	
}
