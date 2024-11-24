package Customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateCustomerServlet")
public class updateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = CustomerDButil.updateCustomer(id, firstname, lastname, email, phone, password);
		
		RequestDispatcher dis;
		
		if (isTrue == true) {
			 dis = request.getRequestDispatcher("SuccessUpdate.jsp");
		}
		else {
		     dis = request.getRequestDispatcher("UnsuccessUpdate.jsp");
		}
		dis.forward(request, response); // Forward to the appropriate page
	}

}
