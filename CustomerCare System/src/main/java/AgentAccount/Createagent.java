package AgentAccount;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/Createagent")
public class Createagent extends HttpServlet{
	public void dopost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		String firstName= req.getParameter("firstName");
		String lastName= req.getParameter("lastName");
		String email= req.getParameter("email");
		String Department= req.getParameter("Department");
		String phone= req.getParameter("phone");
		String agentcode= req.getParameter("agentcode");
		
		try {  //insert into database
			Connection con = DBConection.getConnection();
			String query="INSERT INTO Agent((first_name, last_name, email, dob, phone, address, agent_code) VALUES (?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
			
			ps.setString(1,firstName);
			ps.setString(2,lastName);
			ps.setString(3,email);
			ps.setString(5,phone);
			ps.setString(7,agentcode);
			ps.executeUpdate();  //execute query
			
			//redirect to  create acount pag
			res.sendRedirect("Agentdata.jsp");
			
		}catch(Exception e) {  //catch error
			e.printStackTrace()
;		}
	}

}

