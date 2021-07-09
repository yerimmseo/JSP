package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 이 서블릿으로 접속하려면 어떤 URL로 접속해야하는지 설정하는 어노테이션 (/chap01/hello)
@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// HttpServletRequext : 사용자가 보낸 모든 요청 정보를 담을 수 있는 클래스
		// HttpServletResponse: 받은 요청을 통해 알맞은 응답을 담아놓을 수 있는 클래스
		
		PrintWriter out = resp.getWriter();
		
		out.println("<html><head><title>안녕하세요</title></head><body>");
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
