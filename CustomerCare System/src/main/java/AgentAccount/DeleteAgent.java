package AgentAccount;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection; 
import java.sql.PreparedStatement; 
import java.sql.SQLException;

@WebServlet("/DeleteAgent")
public class DeleteAgent extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // Retrieve the agent ID parameter
        int agentId = Integer.parseInt(req.getParameter("agentid"));
        
        try (Connection con = DBConection.getConnection(); 
             PreparedStatement ps = con.prepareStatement("DELETE FROM agents WHERE agent_id = ?")) {
             
            ps.setInt(1, agentId); 
            ps.executeUpdate(); 
            
            
            res.sendRedirect("Agentdata.jsp");
        } catch (SQLException e) { 
            e.printStackTrace(); 
        } catch (NumberFormatException e) {
            e.printStackTrace(); 
        }
    }
}
