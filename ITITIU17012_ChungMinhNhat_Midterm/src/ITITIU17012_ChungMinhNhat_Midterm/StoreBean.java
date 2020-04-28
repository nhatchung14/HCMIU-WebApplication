package ITITIU17012_ChungMinhNhat_Midterm;

public class StoreBean implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	
	// Fields
	private String fullname = "";
	private String email 	= "";
	private String username	= "";
	private String password = "";
	private String confirmpassword = "";
	
	public StoreBean() {}
	
	// Fullname
	public String getFullname() {
		return this.fullname;
	}
	
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	
	// Email
	public String getEmail() {
		return this.email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	// Username
	public String getUsername() {
		return this.username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	// Password
	public String getPassword() {
		return this.password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	// Confirmpassword
	public String getConfirmpassword() {
		return this.confirmpassword;
	}
		
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
}
