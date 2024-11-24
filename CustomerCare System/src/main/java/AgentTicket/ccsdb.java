package AgentTicket;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

public class ccsdb<ticket> {
	
	public Connection dbConnection() {
		Connection con=null;
		
		String url="jdbc:mysql://localhost:3306/customercaresystem";
		String un="root";
		String pw="root";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			
			con = (Connection) DriverManager.getConnection(url,un,pw);
			
			System.out.println("Database connection succes");
		} catch (Exception e) {
			
		}
		
		return con;
	}


	public List<ticket> getAllticket() {
		List<ticket> tiList = new ArrayList<>();
		Connection con=dbConnection();
		
		String query="SELECT * FROM ticket";
		
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				int tid=rs.getInt("tid");
				String subject=rs.getString("subject");
				String description = rs.getString("description");
			
				
			
				tiList.add(new ticket(tid,subject,description));
			}
		}catch(Exception e) {
			
		}
		
		return tiList;
	}

	public void addResponse(ticket newResponse) {
        Connection con = dbConnection();
        try {
            String sql = "INSERT INTO responses (tid, responseText) VALUES (?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, newResponse.getTid());
            ps.setString(2, newResponse.getResponseText());  
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<ticket> getAllResponses() {
        Connection con = dbConnection();
        List<ticket> responses = new ArrayList<>();
        try {
            String sql = "SELECT * FROM responses";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int tid = rs.getInt("tid");
                String responseText = rs.getString("responseText");
                responses.add(new response(tid, responseText));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return responses;
    }
}


public ticket getResponseByTid(int tid) {
    Connection con = dbConnection();
    ticket response = null;

    try {
        String sql = "SELECT * FROM responses WHERE tid=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, tid);
        
        ResultSet rs = ps.executeQuery();
        
        if (rs.next()) {
            String responseText = rs.getString("responseText");
            response = new response(tid, responseText);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return response;
}


public boolean updateResponse(ticket updatedResponse) {
    Connection con = dbConnection();
    boolean update = false;
    try {
        String sql = "UPDATE responses SET responseText=? WHERE tid=?";
        PreparedStatement ps = con.prepareStatement(sql);
        
        ps.setString(1, updatedResponse.getResponseText());
        ps.setInt(2, updatedResponse.getTid());

        update = ps.executeUpdate() > 0;
    } catch (Exception e) {
        e.printStackTrace();
    }
    return update;
}

	public void deleteticket(String tid) {
		Connection con=dbConnection();
		
		try {
			String query = "DELETE FROM ticket WHERE tid=?";
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setInt(1, tid);
			
			ps.executeUpdate();
			
			System.out.println("Delete success");
		}catch(Exception e) {
			
		}
	}



}
