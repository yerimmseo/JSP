package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * .jsp -> 번역 -> .java(Servlet) -> compile ->
 * 			.class (바이트 코드, 자바 가상 머신이 실행할 수 있는 형태) 상태로 Tomcat에 적재됨 
 * */

@WebServlet("/gugudan")
public class GugudanServlet extends HttpServlet {

	// <%!
	
	// %>
	
	// /chap01/gugudan으로 접속한 사용자에게 멋있는 구구단 테이블을 응답하는 서블릿을 만들어보세요
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// request, page, out ...
		
		// <%
		PrintWriter out = resp.getWriter();
		
		out.print("<style>tr * {padding: 10px}</style>");
		
		out.print("<table border='1'>");
		for (int gop = 0; gop < 9; gop++) {
			for (int dan = 2; dan < 9; dan++) {
				if (gop == 0) {
					//out.printf("<tr><td>%dan</td>", dan);
				} else {
					out.printf("<td>%d x %d = %d</td>", dan, gop, gop * dan);
				}
			}
			out.print("</tr>");
		}
		out.print("</table>");
		// %>
	}
	
}
