package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// �� �������� �����Ϸ��� � URL�� �����ؾ��ϴ��� �����ϴ� ������̼� (/chap01/hello)
@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// HttpServletRequext : ����ڰ� ���� ��� ��û ������ ���� �� �ִ� Ŭ����
		// HttpServletResponse: ���� ��û�� ���� �˸��� ������ ��Ƴ��� �� �ִ� Ŭ����
		
		PrintWriter out = resp.getWriter();
		
		out.println("<html><head><title>�ȳ��ϼ���</title></head><body>");
		out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css\">\r\n"
				+ "    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css\">");
		out.println("<h1>Hello!</h1>");
		out.println("<table class=\"table table-hover\">\r\n"
				+ "        <!-- On rows -->\r\n"
				+ "        <tr class=\"active\">\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "        </tr>\r\n"
				+ "        <tr class=\"success\">\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "        </tr>\r\n"
				+ "        <tr class=\"warning\">\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "        </tr>\r\n"
				+ "        <tr class=\"danger\">\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "        </tr>\r\n"
				+ "        <tr class=\"info\">\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "            <td>table content</td>\r\n"
				+ "        </tr>\r\n"
				+ "    </table>");
		out.println("</body></html>");
	}

}
