package Model;

public class Admin {
	private String username;
	private String pass;
	private String fullName;
	private int type;
	
	public Admin() {
	}

	public Admin(String username, String pass, String fullName, int type) {
		super();
		this.username = username;
		this.pass = pass;
		this.fullName = fullName;
		this.type = type;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
}
