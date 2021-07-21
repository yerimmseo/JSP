package chap08.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletA extends HttpServlet {
	
	String name;
	String tel;
	String user;
	String charset;
	
	@Override
	public void init() throws ServletException {
		ServletConfig config = this.getServletConfig();
		ServletContext application = getServletContext();

		this.name = config.getInitParameter("name");
		this.tel = config.getInitParameter("tel");
		this.user = application.getInitParameter("user");
		this.charset = application.getInitParameter("encoding");
		
		System.out.println("name: " + name);
		System.out.println("tel: " + tel);
		System.out.println("user: " + user);
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		resp.getWriter().append("잘 되고 있는지 확인. ServletA <br>").append("name: " + name);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.setCharacterEncoding(charset);
		resp.setCharacterEncoding(charset);
	}
	
}
