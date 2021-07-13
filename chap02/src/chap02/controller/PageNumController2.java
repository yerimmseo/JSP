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
		 * # 리다이렉트
		 * - 이곳(서블릿 or JSP)으로 요청한 사용자에게 다른곳으로 다시 요청할 것을 명령한다
		 * - 사용자 웹 브라우저에서 다시 요청 보내야 할 URL을 사용해야 한다
		 * */
		resp.sendRedirect(String.format("/chap02/forward/view/page%s.jsp", page));
	}
	
}
