package UserAdmin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/agent1")
public class agent1 extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String department = request.getParameter("department");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {

            conn = DatabaseConnection.getConnection();

            // SQL query for inserting agent data
            String sql = "INSERT INTO agents (first_name, last_name, email, password, address, phone, department) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?)";

            stmt = (PreparedStatement) conn.prepareStatement(sql);
            stmt.setString(1, firstName);
            stmt.setString(2, lastName);
            stmt.setString(3, email);
            stmt.setString(4, password);
            stmt.setString(5, address);
            stmt.setString(6, phone);
            stmt.setString(7, department);

            // Execute the insert operation
            int rowsInserted = stmt.executeUpdate();

            if (rowsInserted > 0) {
                // Redirect to the agents page after successful operation
                response.sendRedirect("Agent.jsp");
            } else {
                // Handle unsuccessful insertion
                response.getWriter().println("Failed to insert agent data.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Database error occurred.");
        } finally {

            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward to the Agent.jsp for GET requests
        response.sendRedirect("Agent.jsp");
    }
}
