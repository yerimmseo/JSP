package chap03.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap03.bean.Student;

@WebServlet("/student/add")
public class AddStudent extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.getRequestDispatcher("/javabean/form.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		Student stu = new Student(
				req.getParameter("name"),
				Integer.parseInt(req.getParameter("kor")),
				Integer.parseInt(req.getParameter("eng")),
				Integer.parseInt(req.getParameter("math"))
		);
		
		System.out.printf("��� �߰��� �л��� ��� %.2f������ %d�� �Դϴ�.\n",
				stu.getAvg(), stu.getRank());
	}
	
}
