package chap02.session;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = { "/info/log-in" })
public class LogInController extends HttpServlet {

	private String sql = "SELECT * FROM user_information WHERE user_id=?";
	private String url = "jdbc:oracle:thin:@localhost:1521/XEPDB1";
	private String system_id = "java1";
	private String system_password = "1234";
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String user_id = req.getParameter("log-id");
		String user_password = pwToSHA256(req.getParameter("log-password"));
		String save_id = "";
		String save_password = "";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection(url, system_id, system_password);
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, user_id);
			
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				save_id = rs.getString(1);
				save_password = rs.getString(2);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		if (user_password.equals(save_password)) {
			HttpSession session = req.getSession();
			session.setAttribute("success", "성공");
			
			req.setAttribute("userId", user_id);
			
			resp.sendRedirect("/chap02/quiz/login.jsp");
		}
	}
	
	private static String pwToSHA256(String password) {
		String rtnSHA = "";
		
		try {
			// SHA-256 MessageDigest의 생성
			MessageDigest mdSHA256 = MessageDigest.getInstance("SHA-256");
			
			// 매개변수 password를 문자열 바이트로 메세지 다이제스트를 갱신
			mdSHA256.update(password.getBytes());
			
			// 해시 계산 반환값은 바이트배열
			byte[] sha256Hash = mdSHA256.digest();
			
			// 바이트배열을 16진수 문자열로 변환하여 표시
			StringBuilder hexSHA256hash = new StringBuilder();
			
			for (byte b : sha256Hash) {
				String hexString = String.format("%02x", b);
				hexSHA256hash.append(hexString);
			}
			
			rtnSHA = hexSHA256hash.toString();
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			rtnSHA = null;
		}
		
		return rtnSHA;
	}
	
}
