package AgentAccount;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/Updateagent")

public class Updateagent extends HttpServlet{
	
	public void dopost(HttpServletResponse res,HttpServletRequest req) throws ServletException, IOException {
		
		
		// Update parameter
		int agentagentidode=Integer.parseInt(req.getParameter("agentid"));
		String firstName=req.getParameter("firstName");
		String lastName=req.getParameter("lastName");
		String email=req.getParameter("email");
		String Department=req.getParameter("Department");
		String  phone=req.getParameter("phone");
		String agentcode=req.getParameter("agentcode");
		
		try {
			
			Connection con = DBConection.getConnection();
			  String query = "UPDATE agents SET first_name=?, last_name=?, email=?, dob=?, phone=?, address=?, agent_code=? WHERE agent_id=?";
			  PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
			  
			  ps.setString(1,firstName);
				ps.setString(2,lastName);
				ps.setString(3,email);
				ps.setString(4,Department);
				ps.setString(5,phone);
				ps.setString(7,agentcode);
				ps.executeUpdate();  //update query
				
				//Redirect to agent acountpage
				
				res.sendRedirect("Agentdata.jsp");
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
