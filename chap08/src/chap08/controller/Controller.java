package chap08.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
	
	void control(HttpServletRequest req, HttpServletResponse resp);
	
}
