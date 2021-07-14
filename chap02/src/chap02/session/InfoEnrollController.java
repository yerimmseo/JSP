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

@WebServlet(urlPatterns = { "/info/enrollment" })
public class InfoEnrollController extends HttpServlet {

	private String sql = "INSERT INTO user_information VALUES(?, ?, ?)";
	private String url = "jdbc:oracle:thin:@localhost:1521/XEPDB1";
	private String system_id = "java1";
	private String system_password = "1234";
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String user_id = req.getParameter("id");
		String user_password = pwToSHA256(req.getParameter("password"));
		String user_email = req.getParameter("email");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection(url, system_id, system_password);
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, user_id);
			pstmt.setString(2, user_password);
			pstmt.setString(3, user_email);
			
			ResultSet rs = pstmt.executeQuery();
			
			rs.close();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		resp.sendRedirect("/chap02/quiz/login.jsp");
	}
	
	private static String pwToSHA256(String password) {
		String rtnSHA = "";
		
		try {
			// SHA-256 MessageDigest�� ����
			MessageDigest mdSHA256 = MessageDigest.getInstance("SHA-256");
			
			// �Ű����� password�� ���ڿ� ����Ʈ�� �޼��� ��������Ʈ�� ����
			mdSHA256.update(password.getBytes());
			
			// �ؽ� ��� ��ȯ���� ����Ʈ�迭
			byte[] sha256Hash = mdSHA256.digest();
			
			// ����Ʈ�迭�� 16���� ���ڿ��� ��ȯ�Ͽ� ǥ��
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
