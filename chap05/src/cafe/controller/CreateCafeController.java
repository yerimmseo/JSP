package cafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreateCafeController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		System.out.println("[INFO] " + req.getRequestURI() + "�� "
				+ req.getMethod() + "��û�� �߻���.");
		
		req.getRequestDispatcher("/WEB-INF/cafe/create.jsp").forward(req, resp);
		
	}
	
}
