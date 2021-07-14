package chap02.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap02.model.Apple;

@WebServlet("/fruit/controller")
public class FruitController extends HttpServlet {

	private static final long serialVersionUID = -4694982150100550938L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String fruit = req.getParameter("fruit");
		
		System.out.println("클라이언트가 클릭한 과일: " + fruit);
		
		// 해당 과일 이름의 파일의 내용을 읽어서 sysout으로 출력해보세요.
		String path = String.format("D:\\2021 3월 마이크로서비스 취업반\\JAVA\\git\\JSP\\chap02\\files/%s.txt", fruit);
		File f = new File(path);
		StringBuilder detail = new StringBuilder();
		// System.out.println("존재하는가? " + f.exists());
		// System.out.println("실제 위치가 어디냐? " + f.getAbsolutePath());

		try (
				// JDK 1.8
				/* FileInputStream fin = new FileInputStream(f);
				InputStreamReader iin = new InputStreamReader(fin, "UTF-8");*/
				FileReader fin = new FileReader(f, Charset.forName("UTF-8"));
				BufferedReader bin = new BufferedReader(fin);
		) {
			
			String line = null;
			while ((line = bin.readLine()) != null) {
				detail.append(line);
			}
			// System.out.println(fruit + "의 상세정보:\n" + detail);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 리퀘스트 객체의 어트리뷰트에 원하는 데이터를 실어놓을 수 있다.
		// 리퀘스트에 실려있는 어트리뷰트는 포워드하는 페이지로 그대로 전달된다.
		req.setAttribute("fruitName", fruit);
		req.setAttribute("fruitDetail", detail);
		
		// 어트리뷰트에는 자바의 모든 타입들을 실어 보낼 수 있다.
		req.setAttribute("apple1", new Apple());
		req.setAttribute("apple2", new Apple());
		req.setAttribute("apple3", new Apple());
		req.setAttribute("appleArray", new Apple[]{ new Apple(), new Apple(), new Apple() });

		// 포워드된 jsp페이지에서는 주로 화면을 구성한다.
		req.getRequestDispatcher("/attribute/view/fruitDetail.jsp").forward(req, resp);
		
		// resp.sendRedirect("/chap02/attribute/view/fruitDetail.jsp");
	}
	
}
