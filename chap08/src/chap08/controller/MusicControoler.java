package chap08.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MusicControoler implements Controller {

	@Override
	public void control(HttpServletRequest req, HttpServletResponse resp) {
		
		// uri '/music'���� ������ ���� ��� ó��.
		if (req.getMethod().equals("GET")) {
			
		} else if (req.getMethod().equals("POST")) {
			
		}
		
		// DB���� ���� �����͸� ��Ʈ����Ʈ�� �Ǿ���� �� �ִ�.
		req.setAttribute("music", ""/*new Music()*/);
		req.setAttribute("artist", "BTS"/*new Artist()*/);
		req.setAttribute("title", "���ֵ� Ǫ����"/*new Music()*/);
	}

}
