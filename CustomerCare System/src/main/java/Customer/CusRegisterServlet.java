package Customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import Customer.CustomerDButil;

@WebServlet("/CusRegisterServlet")
public class CusRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");	
		
		boolean isTrue;
		
		isTrue = CustomerDButil.registerCustomer(firstname, lastname, email, phone, password);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("SuccessReg.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("UnsuccessReg.jsp");
			dis2.forward(request, response);
		}
	}

}
