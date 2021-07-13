package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * .jsp -> ���� -> .java(Servlet) -> compile ->
 * 			.class (����Ʈ �ڵ�, �ڹ� ���� �ӽ��� ������ �� �ִ� ����) ���·� Tomcat�� ����� 
 * */

@WebServlet("/gugudan")
public class GugudanServlet extends HttpServlet {

	// <%!
	
	// %>
	
	// /chap01/gugudan���� ������ ����ڿ��� ���ִ� ������ ���̺��� �����ϴ� ������ ��������
	
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
