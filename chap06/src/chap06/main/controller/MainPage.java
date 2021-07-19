package chap06.main.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainPage extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		// SELECT count(*) FROM worldcup; ÇÒ ¿¹Á¤
		req.setAttribute("q_count", 0);
		
		req.getRequestDispatcher("/WEB-INF/index/index.jsp").forward(req, resp);
	}
	
}
