package chap08.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MusicControoler implements Controller {

	@Override
	public void control(HttpServletRequest req, HttpServletResponse resp) {
		
		// uri '/music'으로 들어왔을 때의 모든 처리.
		if (req.getMethod().equals("GET")) {
			
		} else if (req.getMethod().equals("POST")) {
			
		}
		
		// DB에서 꺼낸 데이터를 어트리뷰트에 실어놓을 수 있다.
		req.setAttribute("music", ""/*new Music()*/);
		req.setAttribute("artist", "BTS"/*new Artist()*/);
		req.setAttribute("title", "제주도 푸른밤"/*new Music()*/);
	}

}
