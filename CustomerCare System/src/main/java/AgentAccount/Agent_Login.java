package AgentAccount;

public class Agent_Login {
	
	  private String userName;
	   private String password;	
	
	//constructor
	public Agent_Login(String username,String pasword) {
		this.password=pasword;
		this.userName=username;
	}


	
  
  public void setUserName(String userName) {
      this.userName = userName;
  }

  
  public void setPassword(String password) {
      this.password = password;
  }

  
  public String getUserName() {
      return userName;
  }

  
  public String getPassword() {
      return password;
  }
}
