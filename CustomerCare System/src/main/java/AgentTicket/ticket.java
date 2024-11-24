package AgentTicket;


public class ticket {

	int tid;
	String subject;
	String description;
	
	@Override
	public String toString() {
		return "ticket [tid=" + tid + ", subject=" + subject + ", description=" + description + "]";
	}
	public ticket(String subject, String description) {
		super();
		this.subject = subject;
		this.description = description;
	
	}
	public ticket() {
		super();
		
	}
	public ticket(int tid, String subject, String description) {
		super();
		this.tid = tid;
		this.subject = subject;
		this.description = description;
	}
	public int gettid() {
		return tid;
	}
	public void settid(int tid) {
		this.tid = tid;
	}
	public String getsubject() {
		return subject;
	}
	public void setsubject(String subject) {
		this.subject = subject;
	}
	public String getdescription() {
		return description;
	}
	public void setdescription(String description) {
		this.description = description;
	}

	private int tid1;          
    private String responseText;  

    
    public ticket(int tid, String responseText) {
        this.tid = tid;
        this.responseText = responseText;
    }

    
    public int getTid() {
        return tid;
    }

   
    public void setTid(int tid) {
        this.tid = tid;
    }

    
    public String getResponseText() {
        return responseText;
    }

  
    public void setResponseText(String responseText) {
        this.responseText = responseText;
    }

    @Override
    public String toString() {
        return "Response [tid=" + tid + ", responseText=" + responseText + "]";
    }
}


