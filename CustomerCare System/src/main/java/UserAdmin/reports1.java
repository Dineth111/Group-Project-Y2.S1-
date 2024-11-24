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

@WebServlet("/reports1")
public class reports1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data from the request
        String reportId = request.getParameter("reportid");
        String reportDate = request.getParameter("rDate");
        String newCustomers = request.getParameter("newapplicants");
        String newAgents = request.getParameter("newRecCount");
        String newUsers = request.getParameter("newUserCount");
        String currentUsers = request.getParameter("curUserCount");
        String totalUsers = request.getParameter("totalUserCount");
        String adminId = request.getParameter("adminid");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Establish a database connection
            conn = DatabaseConnection.getConnection();

            // Create an SQL query for inserting report data
            String sql = "INSERT INTO reports (report_id, report_date, new_customers, new_agents, new_users, current_users, total_users, admin_id) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            stmt = (PreparedStatement) conn.prepareStatement(sql);
            stmt.setString(1, reportId);
            stmt.setString(2, reportDate);
            stmt.setString(3, newCustomers);
            stmt.setString(4, newAgents);
            stmt.setString(5, newUsers);
            stmt.setString(6, currentUsers);
            stmt.setString(7, totalUsers);
            stmt.setString(8, adminId);

            // Execute the insert operation
            int rowsInserted = stmt.executeUpdate();

            if (rowsInserted > 0) {
                // Redirect to the reports page after successful operation
                response.sendRedirect("Reports.jsp");
            } else {
                response.getWriter().println("Failed to insert report data.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Database error occurred.");
        } finally {
            // Close the statement and connection objects
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

        response.sendRedirect("Reports.jsp");
    }
}
