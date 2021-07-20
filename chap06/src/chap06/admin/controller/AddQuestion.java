package chap06.admin.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap06.dao.DBConnector;
import chap06.dao.WorldcupDAO;

@WebServlet(urlPatterns = {"/admin/addQuestion"})
public class AddQuestion extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/admin/addQuestion.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String question = req.getParameter("question");
		
		try (
				Connection conn = DBConnector.getConnection();
		) {
			
			WorldcupDAO dao = new WorldcupDAO(conn); 
			dao.addQuestion(question); 
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		resp.sendRedirect(req.getContextPath() + "/home");
	}
	
}
