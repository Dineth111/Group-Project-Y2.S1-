package Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/CreateTicketServlet")
public class CreateTicketServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve ticket information from the form
        String subject = request.getParameter("subject");
        String description = request.getParameter("description");
        String date = request.getParameter("date");

        // Retrieve the customerId from session
        HttpSession session = request.getSession(false); // Use false to avoid creating a new session if it doesn't exist
        if (session != null && session.getAttribute("cusDetails") != null) {
            // Extract customerId from the session-stored customer details
            List<Customer> cusDetails = (List<Customer>) session.getAttribute("cusDetails");
            Customer customer = cusDetails.get(0); // Assuming the first entry is the customer
            int customerId = customer.getId(); // Assuming there is a method getId() in Customer class

            try {
                // Call the method to insert the ticket into the database
                boolean isSuccess = CustomerDButil.createTicket(subject, description, date, customerId);

                if (isSuccess) {
                    // Redirect to success page
                    response.sendRedirect("ticketSuccess.jsp");
                } else {
                    // Redirect to failure page
                    response.sendRedirect("ticketFailure.jsp");
                }

            } catch (SQLException e) {
                e.printStackTrace();
                // Redirect to failure page in case of SQL error
                response.sendRedirect("ticketFailure.jsp");
            }

        } else {
            // If no customer session is found, redirect to login page
            response.sendRedirect("login.jsp");
        }
    }
}
