package chap02.river;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TotalTicketPrice
 */
@WebServlet("/ticket/register")
public class TotalTicketPrice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		
		String time = request.getParameter("time");
		String adult = request.getParameter("adult");
		String teenager = request.getParameter("teenager");
		String senior = request.getParameter("senior");
		String disabled = request.getParameter("disabled");
		int adultNum, teenagerNum, seniorNum, disabledNum, 
			adultPrice, teenagerPrice, seniorPrice, disabledPrice, totalPrice;
		
		PrintWriter out = response.getWriter();
		
		if (time.equals("morning")) {
			adultNum = Integer.parseInt(adult);
			adultPrice = 6000 * adultNum;
			
			teenagerNum = Integer.parseInt(teenager);
			teenagerPrice = 6000 * teenagerNum;
			
			seniorNum = Integer.parseInt(senior);
			seniorPrice = 5000 * Integer.parseInt(senior);
			
			disabledNum = Integer.parseInt(disabled);
			disabledPrice = 5000 * disabledNum;
			
			totalPrice = adultPrice + teenagerPrice + seniorPrice + disabledPrice;
			out.printf("조조 시간: 성인%d명, 청소년%d명, 시니어%d명, 장애인%d명.\n"
					+ "총 금액: %d입니다.", adultNum, teenagerNum, seniorNum, disabledNum, totalPrice);
		} else if (time.equals("afternoon")) {
			adultNum = Integer.parseInt(adult);
			adultPrice = 7000 * adultNum;
			
			teenagerNum = Integer.parseInt(teenager);
			teenagerPrice = 7000 * teenagerNum;
			
			seniorNum = Integer.parseInt(senior);
			seniorPrice = 5000 * Integer.parseInt(senior);
			
			disabledNum = Integer.parseInt(disabled);
			disabledPrice = 5000 * disabledNum;
			
			totalPrice = adultPrice + teenagerPrice + seniorPrice + disabledPrice;
			out.printf("조조 시간: 성인%d명, 청소년%d명, 시니어%d명, 장애인%d명.\n"
					+ "총 금액: %d입니다.", adultNum, teenagerNum, seniorNum, disabledNum, totalPrice);
		} else if (time.equals("prime")) {
			adultNum = Integer.parseInt(adult);
			adultPrice = 9000 * adultNum;
			
			teenagerNum = Integer.parseInt(teenager);
			teenagerPrice = 8000 * teenagerNum;
			
			seniorNum = Integer.parseInt(senior);
			seniorPrice = 5000 * Integer.parseInt(senior);
			
			disabledNum = Integer.parseInt(disabled);
			disabledPrice = 5000 * disabledNum;
			
			totalPrice = adultPrice + teenagerPrice + seniorPrice + disabledPrice;
			out.printf("조조 시간: 성인%d명, 청소년%d명, 시니어%d명, 장애인%d명.\n"
					+ "총 금액: %d입니다.", adultNum, teenagerNum, seniorNum, disabledNum, totalPrice);
		} else if (time.equals("nigt")) {
			adultNum = Integer.parseInt(adult);
			adultPrice = 7000 * adultNum;
			
			teenagerNum = Integer.parseInt(teenager);
			teenagerPrice = 7000 * teenagerNum;
			
			seniorNum = Integer.parseInt(senior);
			seniorPrice = 5000 * Integer.parseInt(senior);
			
			disabledNum = Integer.parseInt(disabled);
			disabledPrice = 5000 * disabledNum;
			
			totalPrice = adultPrice + teenagerPrice + seniorPrice + disabledPrice;
			out.printf("조조 시간: 성인%d명, 청소년%d명, 시니어%d명, 장애인%d명.\n"
					+ "총 금액: %d입니다.", adultNum, teenagerNum, seniorNum, disabledNum, totalPrice);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
