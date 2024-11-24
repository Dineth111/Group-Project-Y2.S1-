package AgentAccount;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/ReadAgent")
public class ReadAgent extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        
        String agentid = req.getParameter("agentid");

        try {
            // Establish a database connection
            Connection con = DBConection.getConnection();

            // Create SQL query to fetch agent details based on agent_id
            String query = "SELECT * FROM agents WHERE agent_id = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, agentid);

            // Execute the query and retrieve the result
            ResultSet rs = ps.executeQuery();

            // If an agent record is found, set it as request attributes
            if (rs.next()) {
                req.setAttribute("firstName", rs.getString("first_name"));
                req.setAttribute("lastName", rs.getString("last_name"));
                req.setAttribute("email", rs.getString("email"));
                req.setAttribute("Department", rs.getString("Department"));
                req.setAttribute("phone", rs.getString("phone"));
                req.setAttribute("agentcode", rs.getString("agentcode"));
                req.setAttribute("agentid", agentid);
            }

            // Forward the request and response to the JSP page for display
            RequestDispatcher dispatcher = req.getRequestDispatcher("Agentdata.jsp");
            dispatcher.forward(req, res);

        } catch (Exception e) {
            // Log any errors and forward the user to an error page
            e.printStackTrace();
            req.setAttribute("errorMessage", "Error fetching agent details.");
            req.getRequestDispatcher("errorPage.jsp").forward(req, res);
        }
    }
}
