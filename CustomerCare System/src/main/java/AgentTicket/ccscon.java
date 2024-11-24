package AgentTicket;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ccscon")
public class ccscon extends HttpServlet{
	
	ccsdb db=new ccsdb();
	
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException {
		String act=req.getServletPath();
		
		switch(act) {
		
			case "/dashboard":
				showDashboard(req,res);
				break;
			case "/addresponce":  
                addResponse(req, res);
                break;
				case "getResponses":
				getResponses(req, res);
				break;
	        case "showUpdateResponse":
				showUpdateResponseForm(req, res);
				break;
	
			case "updateResponse":
				updateResponseAction(req, res);
				break;
			case "/delete":
				deleteticket(req,res);
				break;
				
		}
	}


	private void deleteticket(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String tid=String.parseString(req.getParameter("tid"));
		
		db.deleteticket(tid);
		
		System.out.println("Ticket deleted");
		res.sendRedirect("dashboard");
		
	}

	private void updateResponseAction(HttpServletRequest req, HttpServletResponse res) throws IOException {
		int tid = Integer.parseInt(req.getParameter("tid"));
		String responseText = req.getParameter("responseText");
	
		ticket updatedResponse = new ticket(tid, responseText);
		
		boolean check = db.updateResponse(updatedResponse); 
		
		if (check) {
			res.sendRedirect("responce.jsp");
		} else {
			System.out.println("Failed to update response");
		}
	}
	



	private void showUpdateResponseForm(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int tid = Integer.parseInt(req.getParameter("tid"));
		
		ticket response = (ticket) db.getResponseByTid(tid);
		
		req.setAttribute("response", response);
		RequestDispatcher rd = req.getRequestDispatcher("updateResponse.jsp");
		rd.forward(req, res);
	}



	private void addResponse(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String tid = req.getParameter("tiid");
        String responseText = req.getParameter("responseText");

        ticket newResponse = new ticket(Integer.parseInt(tid), responseText);

        db.addResponse(newResponse);

        req.setAttribute("responses", db.getAllResponses());
        RequestDispatcher dispatcher = req.getRequestDispatcher("responce.jsp");
        dispatcher.forward(req, res);
    }
	



	private void showDashboard(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			List<ticket> tiList = new ArrayList<>();
			
			tiList = db.getAllticket();
			req.setAttribute("tik", tiList);
			RequestDispatcher rd=req.getRequestDispatcher("dashboard.jsp");
			rd.forward(req, res);
			
	}

}

