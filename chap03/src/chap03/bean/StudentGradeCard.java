package chap03.bean;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/student/score" })
public class StudentGradeCard extends HttpServlet {

	private static ArrayList<Student> students;
	private static int stuId;
	static {
		students = new ArrayList<>();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("EUC-KR");
		
		String name = req.getParameter("name");
		String kor = req.getParameter("kor");
		String eng = req.getParameter("eng");
		String math = req.getParameter("math");
		
		Student student = new Student();
		
		if (name.isEmpty() || kor.isEmpty() || eng.isEmpty() || math.isEmpty()) {
			resp.sendRedirect("/chap03/javabean/form.jsp");
		} else {
			if (Integer.parseInt(kor) > 100 || Integer.parseInt(eng) > 100 || Integer.parseInt(math) > 100) {
				resp.sendRedirect("/chap03/javabean/form.jsp");
			} else {
				String stu_id = String.format("A%05d", ++stuId);
				student.setId(stu_id);
				student.setName(name);
				student.setKor(Integer.parseInt(kor));
				student.setEng(Integer.parseInt(eng));
				student.setMath(Integer.parseInt(math));
				student.setAvg((student.getKor() + student.getEng() + student.getMath()) / 3.0);
				students.add(student);
			}
		}
		students.sort(new StudentRank());
		for (int i = 0, j = 0; i < students.size(); i++) {
			students.get(i).setRank(++j);
		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/javabean/gradeCard.jsp");
		req.setAttribute("students", students);
		dispatcher.forward(req, resp);
	}
}

class StudentRank implements Comparator<Student> {
	@Override
	public int compare(Student o1, Student o2) {
		if (o1.getAvg() < o2.getAvg()) {
			return 1;
		} else if (o1.getAvg() == o2.getAvg()) {
			return 0;
		} else {
			return -1;
		}
	}
}