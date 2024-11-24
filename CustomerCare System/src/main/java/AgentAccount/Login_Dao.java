package AgentAccount;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Login_Dao {

    public boolean checkLogin(String username, String password) {
        String url = "jdbc:mysql://localhost:3307/login";  // DB conection url
        String dbUsername = "yourDbUsername";  // DB username
        String dbPassword = "yourDbPassword";  // DB pasword

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");  // Load MySQL JDBC driver
            
            // DB Conection
            Connection con = DriverManager.getConnection(url, dbUsername, dbPassword);
            
            // Create sql query
            String sql = "SELECT * FROM USER WHERE USERNAME = ? AND PASSWORD = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            
            //Exeute the sql query
            ResultSet rs = ps.executeQuery();
            
            // Check 
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();  // Check sql exception
        } catch (ClassNotFoundException e) {
            e.printStackTrace();  // check classnotfound exeption
        }
        return false; 
    }
}
