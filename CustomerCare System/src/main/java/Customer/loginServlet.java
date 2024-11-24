package Customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            // Validate the user's email and password
            List<Customer> cusDetails = CustomerDButil.Validate(email, password);
            // Store customer details in session to use in updateDetails
            HttpSession session = request.getSession();
            session.setAttribute("cusDetails", cusDetails);

        } catch (Exception e) {
            e.printStackTrace();
        }

        // Redirect to the customer dashboard
        response.sendRedirect("customerDashboard.jsp");
    }
}


