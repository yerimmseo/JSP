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
		
		System.out.println("Ŭ���̾�Ʈ�� Ŭ���� ����: " + fruit);
		
		// �ش� ���� �̸��� ������ ������ �о sysout���� ����غ�����.
		String path = String.format("D:\\2021 3�� ����ũ�μ��� �����\\JAVA\\git\\JSP\\chap02\\files/%s.txt", fruit);
		File f = new File(path);
		StringBuilder detail = new StringBuilder();
		// System.out.println("�����ϴ°�? " + f.exists());
		// System.out.println("���� ��ġ�� ����? " + f.getAbsolutePath());

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
			// System.out.println(fruit + "�� ������:\n" + detail);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// ������Ʈ ��ü�� ��Ʈ����Ʈ�� ���ϴ� �����͸� �Ǿ���� �� �ִ�.
		// ������Ʈ�� �Ƿ��ִ� ��Ʈ����Ʈ�� �������ϴ� �������� �״�� ���޵ȴ�.
		req.setAttribute("fruitName", fruit);
		req.setAttribute("fruitDetail", detail);
		
		// ��Ʈ����Ʈ���� �ڹ��� ��� Ÿ�Ե��� �Ǿ� ���� �� �ִ�.
		req.setAttribute("apple1", new Apple());
		req.setAttribute("apple2", new Apple());
		req.setAttribute("apple3", new Apple());
		req.setAttribute("appleArray", new Apple[]{ new Apple(), new Apple(), new Apple() });

		// ������� jsp������������ �ַ� ȭ���� �����Ѵ�.
		req.getRequestDispatcher("/attribute/view/fruitDetail.jsp").forward(req, resp);
		
		// resp.sendRedirect("/chap02/attribute/view/fruitDetail.jsp");
	}
	
}
