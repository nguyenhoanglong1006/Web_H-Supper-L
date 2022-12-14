package hl.user;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class HLUser {
	@NotNull(message="is required")
	@Size(min=1, message="is required")	
	private String userName;
	
	@NotNull(message="is required")
	@Size(min=1, message="is required")	
	private String password;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	public HLUser() {
		// TODO Auto-generated constructor stub
	}

	public HLUser(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}
	
}
