package chap08.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap08.controller.Controller;
import chap08.controller.MusicControoler;

public class DispatcherServlet extends HttpServlet {

	HashMap<String, String> url_mapping = new HashMap<>();
	HashMap<String, Controller> controller_mapping = new HashMap<>();
	
	@Override
	public void init() throws ServletException {
		
		controller_mapping.put("/music", new MusicControoler());
		
		url_mapping.put("/blog", "/WEB-INF/blog/main.jsp");
		url_mapping.put("/blog/add", "/WEB-INF/blog/newPost.jsp");
		url_mapping.put("/music", "/WEB-INF/music/main.jsp");
		url_mapping.put("/webtoon", "/WEB-INF/webtton/main.jsp");
		
		for (char ch = 'a'; ch <= 'z'; ch++) {
			url_mapping.put(
					String.format("/%c%c%c", ch, ch, ch),
					String.format("/WEB-INF/page/%c.jsp", ch)
			);
		}
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		/*
		 * /chap08/aaa로 들어오면 /WEB-INF/page/a.jsp
		 * /chap08/bbb로 들어오면 /WEB-INF/page/b.jsp
		 * ... 
		 * /chap08/zzz로 들어오면 /WEB-INF/page/z.jsp 로 포워딩 해보세요
		 * */

		String uri = req.getRequestURI().substring(req.getContextPath().length());

		// 처리
		controller_mapping.get(uri).control(req, resp);
		
		String forward_to = url_mapping.get(uri);
		if (forward_to == null) {
			System.out.println("No matches found.");
		} else {
			req.getRequestDispatcher(forward_to).forward(req, resp);
		}
		
//		String forward_to = null;
//		
//		for (char ch = 'a'; ch <= 'z'; ch++) {
//			if (uri.equals(String.format("/%c%c%c", ch, ch, ch))) {
//				forward_to = "/WEB-INF/page/" + ch + ".jsp";
//			}
//		}
//		
//		if (forward_to == null) {
//			System.out.println("No matches found.");
//		} else {
//			req.getRequestDispatcher(forward_to).forward(req, resp);
//		}
	}

}