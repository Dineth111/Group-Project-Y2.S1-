package AgentAccount;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Login_user")
public class Login_user extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        Login_Dao dao = new Login_Dao();
        if (dao.checkLogin(username, password)) {
            res.sendRedirect("Home.jsp");
        } else {
            res.sendRedirect("Agent_login.jsp");  //redirect Login page
        }

    }
}
