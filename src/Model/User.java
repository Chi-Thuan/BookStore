package Model;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

public class User {
	private String id;
	private String fullname;
	private String email;
	private String phone;
	private String password;
	
	public User(String fullname, String email, String phone) {
		super();
		this.fullname = fullname;
		this.email = email;
		this.phone = phone;
	}
	
	public User() {};

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		try {
			this.password = hasPassword(password);
		} catch (NoSuchAlgorithmException e) {
			System.out.println("ERROR HASH PASSWORD !!!");
			e.printStackTrace();
		}
	}
	
	private final static char[] hexArray = "0123456789ABCDEF".toCharArray();
	
	public static String hasPassword(String password) throws NoSuchAlgorithmException {
		MessageDigest digest = MessageDigest.getInstance("MD5");
		digest.reset();
		byte[] hash = digest.digest(password.getBytes());
		char[] hexChars = new char[hash.length *2];
		for (int i = 0; i < hash.length; i++) {
			int v = hash[i] & 0xFF;
			hexChars[i*2] = hexArray[v >>> 4];
			hexChars[i * 2 + 1] = hexArray[v & 0x0F];
		}
		
		
		return new String(hexChars);
	}
}