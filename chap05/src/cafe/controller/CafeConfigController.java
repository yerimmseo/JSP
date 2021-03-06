package cafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CafeConfigController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		System.out.println("[INFO] " + req.getRequestURI() + "로 "
				+ req.getMethod() + "요청이 발생함.");
		
		req.getRequestDispatcher("/WEB-INF/cafe/config.jsp").forward(req, resp);
		
	}
	
}
