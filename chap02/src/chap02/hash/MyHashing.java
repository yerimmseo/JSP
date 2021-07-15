package chap02.hash;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MyHashing {

	public static String hash(String password) {
		try {
			MessageDigest sha256 = MessageDigest.getInstance("SHA-256");
			StringBuilder HashValue = new StringBuilder();
			
			for (byte b : sha256.digest(password.getBytes())) {
				HashValue.append(String.format("%02x", b));
			}
			
			System.out.println(HashValue);
			return HashValue.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}		
	}
	
	public static void main(String[] args) {
		MyHashing.hash("1234");
	}
	
}
