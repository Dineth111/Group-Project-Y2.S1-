package AgentAccount;

public class Agent {

	private String FirstName;
	private String LastName;
	private String email;
	private String phone;
	private String pasword;
	private String department;
	private String agentcode;
	
	
	public Agent(String FirstName,String LastName,String email,String phone,String pasword,String department,String agentcode) {
		this.agentcode=agentcode;
		this.FirstName=FirstName;
		this.LastName=LastName;
		this.email=email;
		this.pasword=pasword;
		this.phone=phone;
		this.department=department;
	}
	//set values
	public void setFirstname(String Firstname) {
		this.FirstName=Firstname;
	}
	public void setlastname(String lastname) {
		this.LastName=lastname;
	}
	public void setemail(String email) {
		this.email=email;
	}
	public void setphone(String phone) {
		this.phone=phone;
	}
	public void setpasword(String pasword) {
		this.pasword=pasword;
	}
	public void setdepartment(String department) {
		this.department=department;
	}
	public void setagentcode(String agentcode) {
		this.agentcode=agentcode;
	}
	
	
	//return values
	
	public String firstname() {
		return firstname();
	}
	public String lastname() {
		return lastname();
	}
	public String email() {
		return email();
	}
	public String phone() {
		return phone();
	}
	public String pasword() {
		return pasword();
	}
	public String department() {
		return department();
	}
	public String agentcode() {
		return agentcode();
	}
	
	
	
	
}
	
	
